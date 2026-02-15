# static/components/data.py
import requests

DATA_BY_ISO3 = {
    "CAN": {"score": 0.1, "status": "Low", "summary": "Few endangered cultures", "cultures": ["Example A", "Example B"]},
    "BRA": {"score": 0.8, "status": "High", "summary": "Many endangered cultures", "cultures": ["Example C"]},
    "USA": {"score": 0.4, "status": "Medium", "summary": "Some endangered cultures", "cultures": []},
}

NO_DATA_COLOR = "#d9d9d9"
ISO_FIELD = "ISO_A3"
GEOJSON_URL = "https://raw.githubusercontent.com/datasets/geo-countries/master/data/countries.geojson"

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
        rgb = (lerp(green[0], yellow[0], t),
               lerp(green[1], yellow[1], t),
               lerp(green[2], yellow[2], t))
    else:
        t = (score - 0.5) / 0.5
        rgb = (lerp(yellow[0], red[0], t),
               lerp(yellow[1], red[1], t),
               lerp(yellow[2], red[2], t))

    return rgb_to_hex(rgb)

def load_geojson():
    return requests.get(GEOJSON_URL, timeout=30).json()

def apply_styles(geo, data_by_iso3, risk_to_color_fn):
    for f in geo["features"]:
        iso3 = f.get("properties", {}).get(ISO_FIELD)
        entry = data_by_iso3.get(iso3, {})
        score = entry.get("score", None)

        f["properties"]["_score"] = score
        f["properties"]["_status"] = entry.get("status", "No data")
        f["properties"]["_summary"] = entry.get("summary", "No information available.")
        f["properties"]["_cultures"] = entry.get("cultures", [])

        f["properties"]["style"] = {
            "fillColor": risk_to_color_fn(score),
            "color": "#444444",
            "weight": 1,
            "opacity": 1,
            "fillOpacity": 0.85,
        }
    return geo