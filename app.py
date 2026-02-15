# app.py
from dash import Dash
from static.components.data import load_geojson, apply_styles, ISO_FIELD, risk_to_color, DATA_BY_ISO3
from static.components.map import build_map
from static.components.panel import build_panel, register_panel_callbacks
from static.components.ui import build_layout, build_legend

# Dash will load CSS from static/assets/styles.css
app = Dash(__name__, assets_folder="static/assets")
server = app.server

# Load + style geojson
geo = load_geojson()
geo = apply_styles(geo, DATA_BY_ISO3, risk_to_color)

# Build UI parts
map_component = build_map(geo)
legend_component = build_legend()
panel_component = build_panel(legend_component)

# Layout
app.layout = build_layout(map_component, panel_component)

# Callbacks
register_panel_callbacks(app, ISO_FIELD, risk_to_color)

if __name__ == "__main__":
    app.run(debug=True)
