from dash import Dash
from components.map_view import load_geojson, apply_styles, build_map, ISO_FIELD
from components.panel_view import build_panel, register_panel_callbacks
from components.ui_view import build_layout, build_legend
from components.data import load_geojson, apply_styles, risk_to_color, ISO_FIELD
geo = load_geojson()
geo = apply_styles(geo)


# your data + risk_to_color stay here (or move to components/data.py)
DATA_BY_ISO3 = {
    "CAN": {"score": 0.1, "status": "Low", "summary": "Few endangered cultures", "cultures": ["Example A", "Example B"]},
    "BRA": {"score": 0.8, "status": "High", "summary": "Many endangered cultures", "cultures": ["Example C"]},
    "USA": {"score": 0.4, "status": "Medium", "summary": "Some endangered cultures", "cultures": []},
}

# keep your risk_to_color function exactly as you have it
# (paste it here)

app = Dash(__name__)
server = app.server

geo = load_geojson()
geo = apply_styles(geo, DATA_BY_ISO3, risk_to_color)

map_component = build_map(geo)
panel_component = build_panel()

app.layout = build_layout(map_component, panel_component)

# put legend into panel by replacing legendMount, or just include it in build_panel()
# easiest: edit build_panel() to include build_legend()

register_panel_callbacks(app, ISO_FIELD, risk_to_color)

if __name__ == "__main__":
    app.run(debug=True)