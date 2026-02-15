-- HOTSPOTS (Canada)
INSERT INTO hotspots (country, label, risk_level, lat, lng) VALUES
('Canada', 'Haida Gwaii (BC)', 'high', 53.2520, -132.0870),
('Canada', 'Bella Coola / Nuxalk Territory (BC)', 'high', 52.3730, -126.7520),
('Canada', 'Siksiká / Blackfoot (AB)', 'medium', 50.6400, -113.4400),
('Canada', 'Treaty 6/8 Cree Regions (AB/SK)', 'medium', 53.5440, -113.4900),
('Canada', 'Innu Communities (QC/Labrador)', 'medium', 50.2140, -66.3840),
('Canada', 'Kahnawà:ke / Mohawk (QC)', 'medium', 45.3900, -73.7000),
('Canada', 'Métis Michif Communities (MB)', 'high', 49.9000, -97.1400),
('Canada', 'Heiltsuk / Bella Bella (BC)', 'high', 52.1670, -128.1450);

-- CULTURES (tied to hotspots 1..8)
INSERT INTO cultures (hotspot_id, culture_name, short_history, why_endangered, whats_at_risk, risk_level, sources_note) VALUES
(1, 'Haida', 'Indigenous nation of the Northwest Coast with deep ties to Haida Gwaii and a strong tradition of oral history and art.',
 'Language shift and historical assimilation pressures reduced fluent speakers; revitalization is ongoing.',
 'language,oral-history,carving,weaving,place-names', 'high',
 'Haida listed as endangered in Ethnologue (Northern/Southern).'),

(2, 'Nuxalk', 'Indigenous people of the Central Coast (Bella Coola area) with cultural knowledge rooted in land and community story.',
 'Very small number of fluent speakers and limited intergenerational transmission.',
 'language,ceremonies,oral-history,land-knowledge', 'high',
 'Bella Coola (Nuxalk) listed as endangered in Ethnologue.'),

(3, 'Blackfoot (Niitsitapi)', 'Plains Indigenous nation with rich ceremonial life, language, and artistic traditions.',
 'Historic suppression of language and cultural practices; fewer youth speakers.',
 'language,ceremonies,beadwork,clothing,oral-teaching', 'medium',
 'Blackfoot listed as endangered in Ethnologue.'),

(4, 'Cree (selected communities/dialects)', 'One of the largest Indigenous groups across Canada; many dialects and strong regional identity.',
 'Overall Indigenous language mother-tongue decline + uneven transmission in some dialect regions.',
 'language-dialects,oral-history,seasonal-practices,land-knowledge', 'medium',
 'StatsCan shows Indigenous mother-tongue decline from 2016→2021.'),

(5, 'Innu (Innu-aimun)', 'Innu communities across parts of Quebec and Labrador with land-based knowledge and oral tradition.',
 'Language pressure from dominant languages; uneven transmission depending on community.',
 'language,land-knowledge,oral-history,traditions', 'medium',
 'Innu listed as endangered in Ethnologue.'),

(6, 'Mohawk (Kanien’kéha)', 'Haudenosaunee nation with strong cultural governance, language, and ceremony.',
 'Language shift pressures; revitalization often relies on community programs.',
 'language,ceremonies,oral-history,identity-knowledge', 'medium',
 'Broader Indigenous language decline is documented by StatsCan/CanGeo.'),

(7, 'Métis (Michif)', 'Métis communities with distinct identity and mixed-language heritage (Michif varieties).',
 'Very low first-language use; endangered status widely documented by linguistic references.',
 'language,identity-stories,oral-history', 'high',
 'Michif listed as endangered in Ethnologue.'),

(8, 'Heiltsuk (Híɫzaqv)', 'Coastal nation with language and traditions closely tied to place and community relationships.',
 'Small number of fluent speakers reported in recent coverage; revitalization efforts ongoing.',
 'language,oral-history,land-knowledge,ceremonies', 'high',
 'Recent reporting highlights urgency and revitalization.');

-- =====================
-- CANADA: LANGUAGE
-- =====================

INSERT INTO language_phrases (culture_id, phrase_native, phrase_english, phonetic, notes) VALUES
(1, 'Háw\'aa', 'Thank you', 'HAH-wah', 'Used to show gratitude in Haida'),
(1, 'Sk\'áang', 'Friend', 'SKAH-ang', 'Friendly greeting'),

(2, 'Núyem', 'Hello', 'NOO-yem', 'Traditional Nuxalk greeting'),

(3, 'Oki', 'Hello', 'OH-kee', 'Common Blackfoot greeting'),

(4, 'Tânisi', 'Hello', 'TAH-nee-see', 'Cree greeting'),

(5, 'Kuei', 'Hello', 'KWAY', 'Innu greeting'),

(6, 'Skennen’kó:wa', 'Peace', 'SKEH-nen-go-wa', 'Mohawk word for peace'),

(7, 'Tawnshi', 'Hello', 'TOWN-shee', 'Michif greeting'),

(8, 'Gilakas’la', 'Thank you', 'gee-LAH-kahs-la', 'Heiltsuk thank you');

-- =====================
-- CANADA: TRADITIONS
-- =====================

INSERT INTO traditions (culture_id, category, title, description) VALUES
(1, 'craft', 'Haida Totem Carving', 'Large cedar poles carved to represent family lineage, spiritual stories, and historical events.'),
(1, 'ceremony', 'Potlatch Ceremony', 'Community gathering celebrating births, marriages, and leadership transitions.'),

(3, 'craft', 'Blackfoot Beadwork', 'Intricate designs sewn onto clothing and regalia, each pattern holding cultural meaning.'),

(4, 'ceremony', 'Cree Seasonal Ceremonies', 'Ceremonies honoring the land and animals at key times of the year.'),

(7, 'food', 'Michif Bannock', 'Traditional bread cooked during family gatherings and celebrations.'),

(8, 'craft', 'Heiltsuk Weaving', 'Basket weaving using cedar bark and plant fibers for ceremonial and daily use.');

-- =====================
-- CANADA: STORIES
-- =====================

INSERT INTO stories (culture_id, title, story_text, contributor, status) VALUES
(1, 'Learning to Carve with My Grandfather',
'When I was young, my grandfather would take me into the forest to choose cedar trees for carving. He told me that every tree had a spirit and a story. As we carved together, he explained the meaning behind each animal figure — the eagle for strength, the raven for creation. Today, I teach my children the same way, so our stories will not be forgotten.',
'Haida community member', 'approved'),

(4, 'Speaking Cree at Home',
'My parents made a decision to speak Cree at home even when English became common in school. At first it was difficult, but slowly I began to understand the songs and stories my grandmother shared. Now I speak Cree with my own children so they can grow up knowing who they are and where they come from.',
'Cree elder', 'approved'),

(7, 'Keeping Michif Alive',
'When I was growing up, very few people my age could speak Michif. Our community started weekly language nights where elders taught us simple phrases and traditional songs. Those evenings became more than lessons — they became moments of connection between generations.',
'Métis youth', 'approved');

