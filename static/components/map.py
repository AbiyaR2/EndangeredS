import requests
import dash_leaflet as dl

NO_DATA_COLOR = "#d9d9d9"
ISO_FIELD = "ISO_A3"
GEOJSON_URL = "https://raw.githubusercontent.com/datasets/geo-countries/master/data/countries.geojson"

def load_geojson():
    return requests.get(GEOJSON_URL, timeout=30).json()

def apply_styles(geo, data_by_iso3, risk_to_color):
    for f in geo["features"]:
        iso3 = f.get("properties", {}).get(ISO_FIELD)
        entry = data_by_iso3.get(iso3, {})
        score = entry.get("score", None)

        f["properties"]["_score"] = score
        f["properties"]["_status"] = entry.get("status", "No data")
        f["properties"]["_summary"] = entry.get("summary", "No information available.")
        f["properties"]["_cultures"] = entry.get("cultures", [])

        f["properties"]["style"] = {
            "fillColor": risk_to_color(score) if score is not None else NO_DATA_COLOR,
            "color": "#444444",
            "weight": 1,
            "opacity": 1,
            "fillOpacity": 0.85,
        }
    return geo

def build_map(geo):
    return dl.Map(
        center=[20, 0],
        zoom=2,
        className="map",  # CSS hook
        children=[
            dl.TileLayer(url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"),
            dl.GeoJSON(
                id="countries",
                data=geo,
                hoverStyle={"weight": 2, "color": "#111111"},
            ),
        ],
    )