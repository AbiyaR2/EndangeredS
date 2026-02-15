-- HOTSPOTS (Central Asia)
INSERT INTO hotspots (country, label, risk_level, lat, lng) VALUES
('Kazakhstan', 'Kazakh Nomadic Tribes (Almaty & East)', 'medium', 43.2500, 76.9000),
('Kyrgyzstan', 'Kyrgyz Mountain Communities', 'medium', 42.5000, 74.6000),
('Uzbekistan', 'Karakalpakstan / Karakalpak Communities', 'high', 42.2500, 60.2500),
('Turkmenistan', 'Karakalpak & Turkmen Minor Tribes', 'medium', 39.0000, 59.0000),
('Tajikistan', 'Pamiri / Wakhi Communities', 'high', 37.5000, 71.3000),
('Kazakhstan', 'Dungan Communities', 'medium', 45.5000, 78.3500),
('Uzbekistan', 'Kyrgyz-speaking enclaves (Fergana Valley)', 'medium', 40.0000, 71.8000),
('Kyrgyzstan', 'Sary-Chelek / Small Indigenous Communities', 'medium', 41.3000, 72.9000),
('Tajikistan', 'Yaghnobi Villages', 'high', 39.0000, 69.0000);


-- CULTURES (Central Asia)
INSERT INTO cultures (hotspot_id, culture_name, short_history, why_endangered, whats_at_risk, risk_level, sources_note) VALUES

(1, 'Kazakh Nomads', 'Traditional Kazakh pastoralists living in steppe regions with yurts, oral poetry, and horseback culture.',
'Modern urbanization and sedentarization reduce traditional nomadic lifestyle and language transmission.',
'language,oral-poetry,yurts,rituals,folk-music','medium',
'Kazakh oral traditions and nomadic practices increasingly at risk according to UNESCO reports.'),

(2, 'Kyrgyz Mountain Communities', 'Highland Kyrgyz tribes with horseback culture, epic storytelling, and felt-making crafts.',
'Urban migration and education in dominant languages weaken intergenerational transmission.',
'language,oral-epics,crafts,horse-culture,rituals','medium',
'UNESCO notes some dialects and traditional arts are endangered.'),

(3, 'Karakalpak', 'Indigenous people of Karakalpakstan with a Turkic language, traditional music, and agriculture-based rituals.',
'Drought, Aral Sea disaster, and language shift threaten cultural survival.',
'language,oral-history,folk-music,crafts,rituals','high',
'Karakalpak language listed as endangered by Ethnologue and UNESCO.'),

(4, 'Turkmen Minor Tribes', 'Small ethnic groups with unique dialects and textile traditions within Turkmenistan.',
'Assimilation and dominant Turkmen language reduce native language use.',
'language,crafts,rituals,oral-history','medium',
'Minor tribal languages vulnerable; UNESCO recognizes risk.'),

(5, 'Pamiri / Wakhi', 'Mountain communities in GBAO region of Tajikistan with Eastern Iranian languages, festivals, and folk music.',
'Political marginalization and migration endanger language and customs.',
'language,folk-music,rituals,oral-history,crafts','high',
'Wakhi and related Pamiri languages critically endangered according to Ethnologue.'),

(6, 'Dungan', 'Chinese Muslim immigrants in Kazakhstan retaining Hui (Mandarin-derived) language, cuisine, and festivals.',
'Urbanization and assimilation reduce language and traditional practices.',
'language,food,oral-history,rituals','medium',
'Dungan language considered vulnerable; cultural continuity depends on small communities.'),

(7, 'Kyrgyz enclaves (Fergana Valley)', 'Small Kyrgyz-speaking enclaves in Uzbekistan with traditional music and yurt-making.',
'Integration into Uzbek-majority areas reduces cultural practices.',
'language,crafts,folk-music,rituals','medium',
'Some dialects endangered; traditional crafts declining.'),

(8, 'Sary-Chelek Communities', 'Remote highland Kyrgyz communities with oral storytelling, sheep herding, and seasonal rituals.',
'Population decline and modernization threaten intergenerational cultural transmission.',
'language,oral-history,rituals,herding-knowledge,folk-music','medium',
'Documented in ethnographic studies as vulnerable.'),

(9, 'Yaghnobi', 'Descendants of ancient Sogdians in Tajikistan, preserving the Yaghnobi language, oral epic poetry, and agro-pastoral practices.',
'Language shift to Tajik and migration threaten survival.',
'language,oral-poetry,rituals,land-knowledge,crafts','high',
'Yaghnobi language listed as critically endangered by UNESCO and Ethnologue.');


-- LANGUAGE PRESERVATION (sample phrases)
INSERT INTO language_phrases (culture_id, phrase_native, phrase_english, phonetic, ipa, audio_path, notes) VALUES
(1, 'Salam', 'Hello', 'sa-lam', 'sɑlɑm', NULL, 'Common Kazakh greeting.'),
(2, 'Kyrgyzcha salam', 'Hello', 'kyr-gyz-cha sa-lam', 'kɪrɡɪz t͡ʃɑ sɑlɑm', NULL, 'Traditional Kyrgyz greeting.'),
(3, 'Salom', 'Peace/Hello', 'sa-lom', 'sɑlom', NULL, 'Karakalpak greeting.'),
(5, 'Wakhi piya', 'Good morning', 'wa-khi pi-ya', 'wɑx.i pi.jɑ', NULL, 'Pamiri Wakhi greeting.'),
(9, 'Salom baroi shumo', 'Hello to you', 'sa-lom ba-roi shu-mo', 'sɑlɔm bɑroɪ ʃu.mo', NULL, 'Yaghnobi greeting.');


-- TRADITIONS & ARTIFACTS
INSERT INTO traditions (culture_id, category, title, description, image_path) VALUES
(1, 'ceremony', 'Nauryz Festival', 'Kazakh New Year festival with rituals, horse games, and music.', NULL),
(2, 'craft', 'Felt-making', 'Kyrgyz traditional felt mats and yurts.', NULL),
(3, 'food', 'Karakalpak Pilaf', 'Traditional rice dish with local spices, served during festivals.', NULL),
(5, 'ceremony', 'Wakhi Spring Festival', 'Seasonal festival with music, dance, and offerings to local spirits.', NULL),
(9, 'oral-history', 'Yaghnobi Epic Poetry', 'Ancient Sogdian-derived oral poems recited during gatherings.', NULL);


-- STORIES
INSERT INTO stories (culture_id, title, story_text, contributor, status) VALUES
(1, 'Horseback Tales', 'My grandfather taught me stories of our ancestors while riding across the steppe.', 'Community member', 'approved'),
(3, 'Karakalpak Weddings', 'Weddings are full of music, dance, and storytelling that keep our culture alive.', 'Community member', 'approved'),
(5, 'Wakhi Folk Songs', 'We sing traditional songs in the mountains during festivals.', 'Community member', 'approved'),
(9, 'Learning Yaghnobi', 'I try to memorize our old poems from my father to keep the language alive.', 'Community member', 'approved');