-- ======================
-- UNITED STATES HOTSPOTS
-- ======================

INSERT INTO hotspots (country, label, risk_level, lat, lng) VALUES
('United States', 'Navajo Nation (AZ/NM/UT)', 'medium', 36.1225, -109.4867),
('United States', 'Lakota Territories (SD)', 'medium', 44.3683, -100.3509),
('United States', 'Cherokee Nation (OK)', 'medium', 35.5520, -94.8780);

-- ======================
-- SOUTH AMERICA HOTSPOTS
-- ======================

INSERT INTO hotspots (country, label, risk_level, lat, lng) VALUES
('Brazil', 'Yanomami Territory (Amazon)', 'high', 2.8167, -62.0167),
('Peru', 'Andean Quechua Regions', 'medium', -13.1631, -72.5450),
('Peru', 'Shipibo Communities (Amazon Basin)', 'high', -7.0000, -74.0000);

-- ======================
-- UNITED STATES CULTURES
-- ======================

INSERT INTO cultures (hotspot_id, culture_name, short_history, why_endangered, whats_at_risk, risk_level, sources_note) VALUES
(9, 'Navajo (Diné)', 
 'Indigenous nation of the American Southwest with strong spiritual ties to land and oral tradition.',
 'Language shift to English and reduced youth fluency despite revitalization efforts.',
 'language,ceremonies,weaving,oral-history,land-knowledge', 'medium',
 'Navajo language listed as endangered in linguistic surveys.'),

(10, 'Lakota (Sioux)', 
 'Great Plains Indigenous people with rich ceremonial and storytelling traditions.',
 'Historic displacement and boarding schools disrupted language transmission.',
 'language,ceremonies,oral-history,cultural-teaching', 'medium',
 'Lakota classified as endangered.'),

(11, 'Cherokee', 
 'Southeastern Indigenous nation with written syllabary and strong cultural identity.',
 'Aging speaker population and limited fluent youth speakers.',
 'language,storytelling,ceremonies,traditional-knowledge', 'medium',
 'Cherokee language listed as endangered.');

-- ======================
-- SOUTH AMERICA CULTURES
-- ======================

INSERT INTO cultures (hotspot_id, culture_name, short_history, why_endangered, whats_at_risk, risk_level, sources_note) VALUES
(12, 'Yanomami', 
 'Amazon rainforest Indigenous people living in communal villages with forest-based culture.',
 'Deforestation, illegal mining, disease, and land invasion threaten survival.',
 'language,shamanism,hunting-traditions,forest-knowledge', 'high',
 'Yanomami culture under severe environmental threat.'),

(13, 'Quechua Communities', 
 'Descendants of the Inca civilization spread across Andean highlands.',
 'Spanish dominance in education and urban migration reduces language use.',
 'language,weaving,festivals,agricultural-knowledge', 'medium',
 'Quechua language declining in younger generations.'),

(14, 'Shipibo-Conibo', 
 'Amazonian Indigenous people known for intricate textile patterns and spiritual traditions.',
 'Deforestation and modernization pressures on traditional lifestyle.',
 'language,crafts,ceremonies,plant-medicine,oral-history', 'high',
 'Shipibo culture increasingly threatened by land loss.');
