-- HOTSPOTS (East Asia)
INSERT INTO hotspots (country, label, risk_level, lat, lng) VALUES
('China', 'Guangxi / Zhuang Minority', 'medium', 23.3000, 108.5000),
('China', 'Yunnan / Hani Communities', 'high', 23.4000, 102.8000),
('China', 'Guizhou / Miao (Hmong) Communities', 'medium', 26.5000, 107.0000),
('Japan', 'Okinawa / Ryukyuan Communities', 'medium', 26.5000, 128.0000),
('Mongolia', 'Tsaatan / Reindeer Herders', 'high', 50.2500, 100.5000),
('Taiwan', 'Amis Indigenous People', 'medium', 23.7000, 121.2000),
('South Korea', 'Jeju / Haenyeo Divers', 'medium', 33.5000, 126.5000),
('China', 'Tibetan Plateau / Tibetan Communities', 'high', 31.0000, 89.0000),
('Japan', 'Ainu Communities (Hokkaido)', 'high', 43.2000, 142.5000);


-- CULTURES (East Asia)
INSERT INTO cultures (hotspot_id, culture_name, short_history, why_endangered, whats_at_risk, risk_level, sources_note) VALUES

(1, 'Zhuang', 'Largest ethnic minority in China, mostly in Guangxi, with rich folk songs, festivals, and weaving traditions.',
'Urbanization and Mandarin dominance reduce use of native language and folk practices.',
'language,oral-history,folk-music,crafts,ceremonies','medium',
'Zhuang language listed as vulnerable by UNESCO and Ethnologue.'),

(2, 'Hani', 'Ethnic minority in Yunnan known for terraced rice farming, traditional festivals, and oral storytelling.',
'Migration, modernization, and Mandarin dominance endanger cultural continuity.',
'language,oral-history,crafts,rituals,festivals','high',
'Hani languages classified as endangered in Ethnologue.'),

(3, 'Miao (Hmong)', 'Ethnic minority in Guizhou with embroidery, musical traditions, and elaborate festivals.',
'Urban migration and language shift threaten traditional practices.',
'language,ceremonies,clothing,crafts','medium',
'Miao (Hmong) languages endangered; UNESCO reports on cultural risk.'),

(4, 'Ryukyuan', 'Indigenous people of Okinawa with distinct languages, music, and dance traditions.',
'Historical language suppression and youth shift to Japanese threaten survival.',
'language,traditional-music,dance,clothing,oral-history','medium',
'Ryukyuan languages classified as severely endangered by UNESCO.'),

(5, 'Tsaatan', 'Nomadic reindeer herders of northern Mongolia with a unique pastoral lifestyle and shamanic traditions.',
'Climate change, modernization, and youth migration threaten lifestyle and language.',
'language,oral-history,herding-knowledge,rituals','high',
'Tsaatan language and culture considered critically endangered by UNESCO.'),

(6, 'Amis', 'Taiwanese indigenous group with rich music, dance, and festival traditions, particularly the harvest festival.',
'Language shift to Mandarin and societal integration threaten cultural continuity.',
'language,folk-music,oral-history,ceremonies','medium',
'Amis language classified as vulnerable by Ethnologue.'),

(7, 'Haenyeo', 'Female free-diving divers in Jeju, South Korea, with matriarchal traditions and unique diving culture.',
'Fewer young divers take up the profession, threatening traditions.',
'traditions,oral-history,folk-music,skills','medium',
'Haenyeo culture recognized by UNESCO as intangible cultural heritage.'),

(8, 'Tibetan', 'Indigenous people of the Tibetan Plateau with deep spiritual traditions, Buddhism, and unique art forms.',
'Political pressures, migration, and language shift endanger Tibetan traditions.',
'language,religious-ceremonies,oral-history,arts,land-knowledge','high',
'Tibetan language and traditions face documented decline in Ethnologue and UNESCO reports.'),

(9, 'Ainu', 'Indigenous people of Hokkaido, Japan, with distinct language, rituals, and craft traditions.',
'Historical assimilation, small population, and language loss threaten survival.',
'language,ceremonies,oral-history,crafts,folk-music','high',
'Ainu language critically endangered; cultural revival programs ongoing.');


-- LANGUAGE PRESERVATION (sample phrases)
INSERT INTO language_phrases (culture_id, phrase_native, phrase_english, phonetic, ipa, audio_path, notes) VALUES
(1, 'Ndeic', 'Hello', 'nde-ik', 'ndɛik', NULL, 'Zhuang greeting.'),
(2, 'Gado', 'Good morning', 'ga-do', 'ɡɑdo', NULL, 'Hani morning greeting.'),
(4, 'Haisai', 'Hello', 'hai-sai', 'haɪsaɪ', NULL, 'Ryukyuan greeting.'),
(5, 'Duun', 'Hello', 'duun', 'duːn', NULL, 'Tsaatan greeting.'),
(6, 'Kiso', 'Thank you', 'ki-so', 'ki.so', NULL, 'Amis greeting/thanks.'),
(7, 'Annyeong', 'Hello', 'an-nyeong', 'aɲjʌŋ', NULL, 'Haenyeo / Korean greeting.'),
(9, 'Irankarapte', 'Hello', 'i-ran-ka-rap-te', 'iɾaŋkaɾapte', NULL, 'Ainu greeting.');


-- TRADITIONS & ARTIFACTS
INSERT INTO traditions (culture_id, category, title, description, image_path) VALUES
(1, 'ceremony', 'Zhuang Singing Festival', 'Annual festival of traditional songs, dances, and communal rituals.', NULL),
(2, 'craft', 'Hani Terraced Farming', 'Rice terrace building and maintenance reflecting traditional ecological knowledge.', NULL),
(3, 'clothing', 'Miao Embroidery', 'Elaborate embroidered clothing for festivals and daily life.', NULL),
(4, 'dance', 'Ryukyuan Eisa Dance', 'Traditional Okinawan dance performed during festivals.', NULL),
(5, 'ceremony', 'Tsaatan Shaman Rituals', 'Spiritual ceremonies tied to reindeer herding and ancestral worship.', NULL),
(6, 'ceremony', 'Amis Harvest Festival', 'Annual ceremony celebrating harvest with music, dance, and rituals.', NULL),
(7, 'skills', 'Haenyeo Diving Techniques', 'Female divers preserve unique diving techniques for seafood collection.', NULL),
(9, 'craft', 'Ainu Wood Carving', 'Traditional carvings depicting spiritual and daily life.', NULL);


-- STORIES
INSERT INTO stories (culture_id, title, story_text, contributor, status) VALUES
(1, 'Zhuang Folk Tales', 'Elders taught us songs about ancestors during festivals.', 'Community member', 'approved'),
(2, 'Hani Terraces', 'I learned to build rice terraces from my father and grandfather.', 'Community member', 'approved'),
(4, 'Ryukyuan Drums', 'We practice drum dances every festival to honor our ancestors.', 'Community member', 'approved'),
(5, 'Tsaatan Life', 'I herd reindeer with my family and perform rituals in the winter.', 'Community member', 'approved'),
(7, 'Haenyeo Lessons', 'I learned diving from my mother; our traditions must continue.', 'Community member', 'approved'),
(9, 'Ainu Songs', 'My grandmother taught me songs in Ainu to keep our language alive.', 'Community member', 'approved');