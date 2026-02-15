-- HOTSPOTS (Africa)
INSERT INTO hotspots (country, label, risk_level, lat, lng) VALUES
('Nigeria', 'Niger Delta / Ogoni Communities', 'high', 5.0000, 6.0000),
('Ethiopia', 'Southern Nations / Hamar Tribe', 'high', 5.6000, 36.2500),
('Kenya', 'Northern Kenya / Rendille Tribe', 'medium', 2.8000, 38.5000),
('South Africa', 'Western Cape / Khoisan Communities', 'high', -33.0000, 21.5000),
('Cameroon', 'Adamawa / Tikar Communities', 'medium', 6.7000, 12.5000),
('Mali', 'Dogon Plateau', 'high', 14.4000, -3.5000),
('Morocco', 'High Atlas / Berber (Amazigh) Communities', 'medium', 31.0000, -7.5000),
('Mozambique', 'Niassa / Makonde Communities', 'medium', -12.5000, 36.0000),
('Tanzania', 'Ngorongoro Highlands / Maasai', 'medium', -3.5000, 35.8000);


-- CULTURES (Africa)
INSERT INTO cultures (hotspot_id, culture_name, short_history, why_endangered, whats_at_risk, risk_level, sources_note) VALUES

(1, 'Ogoni', 'Indigenous Niger Delta people with rich cultural rituals, oral history, and environmental knowledge.',
'Oil pollution, displacement, and language loss threaten survival of traditions.',
'language,oral-history,rituals,land-knowledge,crafts','high',
'Ogoni language and customs endangered; documented by UNESCO and NGOs.'),

(2, 'Hamar', 'Ethiopian highland tribe known for bull-jumping ceremonies, body adornment, and oral storytelling.',
'Modernization and tourism impact traditional practices and intergenerational learning.',
'language,ceremonies,oral-history,rituals,clothing','high',
'Hamar language and rituals considered endangered by UNESCO.'),

(3, 'Rendille', 'Pastoralist communities in Northern Kenya maintaining camel herding, music, and oral tradition.',
'Climate change, urbanization, and assimilation threaten cultural continuity.',
'language,oral-history,herding-knowledge,rituals,folk-music','medium',
'Rendille language vulnerable; pastoral traditions at risk.'),

(4, 'Khoisan', 'Indigenous San peoples of Southern Africa with click languages, storytelling, and hunter-gatherer knowledge.',
'Language loss and land dispossession threaten survival.',
'language,oral-history,crafts,hunting-knowledge,rituals','high',
'Khoisan languages critically endangered; cultural practices threatened by modern expansion.'),

(5, 'Tikar', 'Cameroon highland community with art, mask-making, and festival traditions.',
'Urbanization and language shift threaten traditional ceremonies and crafts.',
'language,crafts,oral-history,ceremonies','medium',
'Tikar language and arts are documented as vulnerable by ethnologists.'),

(6, 'Dogon', 'People of the Dogon Plateau in Mali, known for cliffside villages, mask dances, and cosmology.',
'Climate pressures, migration, and lack of youth participation endanger traditions.',
'language,oral-history,ceremonies,folk-art,crafts','high',
'Dogon language and cultural rituals listed as endangered.'),

(7, 'Berber (Amazigh)', 'Indigenous North African communities in Morocco with unique language, music, and craft traditions.',
'Arabic dominance and urban migration reduce intergenerational language and cultural transmission.',
'language,oral-history,folk-music,crafts,rituals','medium',
'Berber languages classified as vulnerable by UNESCO.'),

(8, 'Makonde', 'Southeast Mozambique people known for wood carving, dance, and matrilineal traditions.',
'Urbanization and language shift threaten transmission of crafts and oral traditions.',
'language,crafts,oral-history,ceremonies','medium',
'Makonde language and crafts are vulnerable; UNESCO notes cultural risk.'),

(9, 'Maasai', 'Pastoralist communities of Tanzania with iconic clothing, beadwork, rituals, and cattle culture.',
'Land encroachment, modernization, and youth migration endanger traditions.',
'language,rituals,folk-art,clothing,herding-knowledge','medium',
'Maasai language and cultural practices at risk; documented by UNESCO and ethnologists.');


-- LANGUAGE PRESERVATION (sample phrases)
INSERT INTO language_phrases (culture_id, phrase_native, phrase_english, phonetic, ipa, audio_path, notes) VALUES
(1, 'Bue', 'Hello', 'bue', 'bwe', NULL, 'Ogoni greeting.'),
(2, 'Kaa', 'Good morning', 'kaa', 'kɑː', NULL, 'Hamar morning greeting.'),
(3, 'Wagyo', 'Hello', 'wa-gyo', 'waɡjo', NULL, 'Rendille greeting.'),
(4, '!Xóõ', 'Greetings', '!kho-o', 'ǃxóː', NULL, 'Khoisan greeting with click consonant.'),
(6, 'Sigi', 'Good day', 'si-gi', 'siɡi', NULL, 'Dogon greeting.'),
(7, 'Azul', 'Hello', 'a-zul', 'ɑzul', NULL, 'Berber (Amazigh) greeting.'),
(9, 'Supai', 'Hello', 'su-pai', 'supɑɪ', NULL, 'Maasai greeting.');


-- TRADITIONS & ARTIFACTS
INSERT INTO traditions (culture_id, category, title, description, image_path) VALUES
(2, 'ceremony', 'Bull-jumping', 'Hamar rite of passage for young men with ritual dances and body adornment.', NULL),
(4, 'craft', 'Beadwork & Hunting Tools', 'Khoisan traditional beadwork and hunting tools passed through generations.', NULL),
(5, 'craft', 'Tikar Mask-making', 'Wooden masks used in festivals and initiation ceremonies.', NULL),
(6, 'ceremony', 'Dogon Mask Dance', 'Traditional dances connected to cosmology and ancestor worship.', NULL),
(7, 'craft', 'Berber Weaving', 'Traditional textiles and carpets crafted by Amazigh women.', NULL),
(8, 'craft', 'Makonde Wood Carving', 'Intricate carvings representing spirits, daily life, and ceremonies.', NULL),
(9, 'ceremony', 'Maasai Eunoto', 'Coming-of-age ceremony for young Maasai men with rituals and communal gatherings.', NULL);


-- STORIES
INSERT INTO stories (culture_id, title, story_text, contributor, status) VALUES
(1, 'Ogoni River Stories', 'Elders teach us stories of the rivers and forests to preserve knowledge.', 'Community member', 'approved'),
(2, 'Hamar Festival', 'Our youth still participate in bull-jumping ceremonies with guidance from elders.', 'Community member', 'approved'),
(4, 'Khoisan Hunting Tales', 'I remember my grandfather showing me traditional tracking skills and songs.', 'Community member', 'approved'),
(6, 'Dogon Legends', 'Every evening we recite ancient stories passed down through generations.', 'Community member', 'approved'),
(9, 'Maasai Cattle Stories', 'Stories about cattle and pastoral life guide our daily routines and ceremonies.', 'Community member', 'approved');

