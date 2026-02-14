INT AUTO_INCREMENT PRIMARY KEY

-- MAP HOTSPOTS (pins)
CREATE TABLE hotspots (
  hotspot_id   INTEGER PRIMARY KEY AUTOINCREMENT,
  country      TEXT NOT NULL,              -- "Canada"
  label        TEXT NOT NULL,              -- "Haida Gwaii (BC)"
  risk_level   TEXT NOT NULL CHECK (risk_level IN ('low','medium','high')),
  lat          REAL NOT NULL,
  lng          REAL NOT NULL
);

-- CULTURE PAGES (one per culture/community)
CREATE TABLE cultures (
  culture_id       INTEGER PRIMARY KEY AUTOINCREMENT,
  hotspot_id       INTEGER NOT NULL,
  culture_name     TEXT NOT NULL,          -- "Haida"
  short_history    TEXT NOT NULL,
  why_endangered   TEXT NOT NULL,
  whats_at_risk    TEXT NOT NULL,          -- comma-separated tags
  risk_level       TEXT NOT NULL CHECK (risk_level IN ('low','medium','high')),
  sources_note     TEXT,                   -- optional: citations/notes you show in UI
  FOREIGN KEY(hotspot_id) REFERENCES hotspots(hotspot_id) ON DELETE CASCADE
);

-- LANGUAGE PRESERVATION: phrases + optional pronunciation audio
CREATE TABLE language_phrases (
  phrase_id      INTEGER PRIMARY KEY AUTOINCREMENT,
  culture_id     INTEGER NOT NULL,
  phrase_native  TEXT NOT NULL,            -- in the language (or romanization)
  phrase_english TEXT NOT NULL,
  phonetic       TEXT,                     -- easy phonetic
  ipa            TEXT,                     -- optional advanced
  audio_path     TEXT,                     -- e.g. "/uploads/haida_hello.webm"
  notes          TEXT,
  FOREIGN KEY(culture_id) REFERENCES cultures(culture_id) ON DELETE CASCADE
);

-- TRADITIONS & ARTIFACTS (categorized)
CREATE TABLE traditions (
  tradition_id  INTEGER PRIMARY KEY AUTOINCREMENT,
  culture_id    INTEGER NOT NULL,
  category      TEXT NOT NULL CHECK (category IN ('ceremony','clothing','craft','food')),
  title         TEXT NOT NULL,
  description   TEXT NOT NULL,
  image_path    TEXT,                      -- optional
  FOREIGN KEY(culture_id) REFERENCES cultures(culture_id) ON DELETE CASCADE
);

-- COMMUNITY STORIES (moderated)
CREATE TABLE stories (
  story_id        INTEGER PRIMARY KEY AUTOINCREMENT,
  culture_id      INTEGER NOT NULL,
  title           TEXT NOT NULL,
  story_text      TEXT NOT NULL,
  contributor     TEXT,                    -- e.g. "Community member"
  status          TEXT NOT NULL CHECK (status IN ('pending','approved','rejected')) DEFAULT 'pending',
  created_at      TEXT NOT NULL DEFAULT (datetime('now')),
  FOREIGN KEY(culture_id) REFERENCES cultures(culture_id) ON DELETE CASCADE
);
