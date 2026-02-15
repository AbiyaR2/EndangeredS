import json
import requests
from dash import Dash, html, Output, Input
import dash_leaflet as dl

# -----------------------------
# 1) Your data (ISO3 -> info)
# score: 0.0 green, 0.5 yellow, 1.0 red
# -----------------------------
DATA_BY_ISO3 = {
    "CAN": {"score": 0.1, "status": "Low", "summary": "Few endangered cultures", "cultures": ["Example A", "Example B"]},
    "BRA": {"score": 0.8, "status": "High", "summary": "Many endangered cultures", "cultures": ["Example C"]},
    "USA": {"score": 0.4, "status": "Medium", "summary": "Some endangered cultures", "cultures": []},
    # ... add more
}

NO_DATA_COLOR = "#d9d9d9"


# -----------------------------
# 2) Color scale (green->yellow->red)
# -----------------------------
def lerp(a, b, t):
    return a + (b - a) * t

def hex_to_rgb(h):
    h = h.lstrip("#")
    return tuple(int(h[i:i+2], 16) for i in (0, 2, 4))

def rgb_to_hex(rgb):
    r, g, b = (max(0, min(255, int(round(x)))) for x in rgb)
    return f"#{r:02x}{g:02x}{b:02x}"

def risk_to_color(score):
    if score is None:
        return NO_DATA_COLOR
    green = hex_to_rgb("#00a651")
    yellow = hex_to_rgb("#ffd200")
    red = hex_to_rgb("#d7191c")

    if score <= 0.5:
        t = score / 0.5
        rgb = (
            lerp(green[0], yellow[0], t),
            lerp(green[1], yellow[1], t),
            lerp(green[2], yellow[2], t),
        )
        return rgb_to_hex(rgb)
    else:
        t = (score - 0.5) / 0.5
        rgb = (
            lerp(yellow[0], red[0], t),
            lerp(yellow[1], red[1], t),
            lerp(yellow[2], red[2], t),
        )
        return rgb_to_hex(rgb)


# -----------------------------
# 3) Load countries GeoJSON
#    Using a public GeoJSON here for convenience.
#    For production: download it and serve locally.
# -----------------------------
GEOJSON_URL = "https://raw.githubusercontent.com/datasets/geo-countries/master/data/countries.geojson"
geo = requests.get(GEOJSON_URL, timeout=30).json()

# This dataset uses ISO3 in properties["ISO_A3"]
ISO_FIELD = "ISO_A3"


# -----------------------------
# 4) Add styling + keep click properties
#    dash-leaflet supports per-feature style via "style" property.
# -----------------------------
for f in geo["features"]:
    iso3 = f.get("properties", {}).get(ISO_FIELD)
    entry = DATA_BY_ISO3.get(iso3, {})
    score = entry.get("score", None)
    f["properties"]["_score"] = score
    f["properties"]["_status"] = entry.get("status", "No data")
    f["properties"]["_summary"] = entry.get("summary", "No information available.")
    f["properties"]["_cultures"] = entry.get("cultures", [])

    f["properties"]["style"] = {
        "fillColor": risk_to_color(score),
        "color": "#444444",
        "weight": 1,
        "opacity": 1,
        "fillOpacity": 0.85,
    }


# -----------------------------
# 5) Dash app
# -----------------------------
app = Dash(__name__)
server = app.server

app.layout = html.Div(
    style={"display": "grid", "gridTemplateColumns": "1fr 340px", "height": "85vh"},
    children=[
        dl.Map(
            center=[20, 0],
            zoom=2,
            style={"height": "100%", "width": "100%"},
            children=[
                dl.TileLayer(url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"),
                dl.GeoJSON(
                    id="countries",
                    data=geo,
                    # IMPORTANT: these props let you receive click info in Dash
                    hoverStyle={"weight": 2, "color": "#111111"},
                    # When clicked, dash-leaflet will populate "click_feature"
                ),
            ],
        ),

        html.Aside(
            style={"padding": "12px", "borderLeft": "1px solid #ddd", "overflow": "auto"},
            children=[
                html.H3("Country Info", style={"marginTop": 0}),
                html.Div(id="panel", children="Click a country to see details."),
                html.Hr(),
                html.Div(
                    [
                        html.Div("Legend"),
                        html.Div(style={"height": "10px", "borderRadius": "6px",
                                        "background": "linear-gradient(90deg, #00a651, #ffd200, #d7191c)"}),
                        html.Div(style={"display": "flex", "justifyContent": "space-between"},
                                 children=[html.Small("Low"), html.Small("Medium"), html.Small("High")]),
                    ]
                ),
            ],
        ),
    ],
)


@app.callback(Output("panel", "children"), Input("countries", "click_feature"))
def show_country_info(feature):
    if not feature:
        return "Click a country to see details."

    props = feature.get("properties", {})
    name = props.get("ADMIN") or props.get("NAME") or "Unknown"
    iso3 = props.get(ISO_FIELD) or "—"
    status = props.get("_status", "No data")
    summary = props.get("_summary", "No information available.")
    cultures = props.get("_cultures", [])
    score = props.get("_score", None)

    swatch = html.Span(
        style={
            "display": "inline-block",
            "width": "14px",
            "height": "14px",
            "borderRadius": "3px",
            "backgroundColor": risk_to_color(score),
            "border": "1px solid #999",
            "marginRight": "8px",
            "verticalAlign": "middle",
        }
    )

    return html.Div(
        [
            html.Div([swatch, html.Strong(name)], style={"display": "flex", "alignItems": "center"}),
            html.P([html.B("ISO3: "), iso3]),
            html.P([html.B("Status: "), status]),
            html.P(summary),
            html.H4("Endangered cultures") if cultures else html.Div(),
            html.Ul([html.Li(c) for c in cultures]) if cultures else html.Small("No list available."),
        ]
    )


if __name__ == "__main__":
    app.run(debug=True)
