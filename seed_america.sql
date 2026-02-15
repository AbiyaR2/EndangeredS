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


-- =====================
-- USA: LANGUAGE
-- =====================

INSERT INTO language_phrases (culture_id, phrase_native, phrase_english, phonetic, notes) VALUES
(9, 'Yáʼátʼééh', 'Hello', 'YAH-ah-teh', 'Navajo greeting'),

(10, 'Hau', 'Hello', 'HOW', 'Lakota greeting'),

(11, 'Osiyo', 'Hello', 'oh-SEE-yo', 'Cherokee greeting');

-- =====================
-- USA: TRADITIONS
-- =====================

INSERT INTO traditions (culture_id, category, title, description) VALUES
(9, 'ceremony', 'Navajo Blessing Way', 'Healing ceremony restoring balance and harmony in life.'),

(10, 'ceremony', 'Sun Dance', 'Sacred ceremony symbolizing renewal and spiritual strength.'),

(11, 'craft', 'Cherokee Basket Weaving', 'Handwoven baskets used for daily life and ceremonial purposes.');

-- =====================
-- USA: STORIES
-- =====================

INSERT INTO stories (culture_id, title, story_text, contributor, status) VALUES
(9, 'Walking in Beauty',
'My grandmother taught me that every day should begin by greeting the sun and thanking the earth. She called this walking in beauty — living in harmony with nature and people. Even now, when life feels busy, I pause each morning to remember her words.',
'Navajo community member', 'approved'),

(10, 'The Power of the Drum',
'During ceremonies, the drumbeat represents the heartbeat of our people. As a child I sat beside my father listening to the rhythm guide our prayers. The drum connects us to our ancestors and reminds us that we are never alone.',
'Lakota elder', 'approved'),

(11, 'Our Language, Our Strength',
'When schools once punished children for speaking Cherokee, many families stopped teaching it. Today our community works hard to bring the language back through immersion schools and storytelling sessions. Every new speaker feels like hope for the future.',
'Cherokee teacher', 'approved');
