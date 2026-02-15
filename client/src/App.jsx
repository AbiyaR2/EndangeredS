import { useState } from "react";

function App() {
  const [word, setWord] = useState("");
  const [meaning, setMeaning] = useState("");
  const [language, setLanguage] = useState("");
  const [entries, setEntries] = useState([]);

  function addEntry() {
    if (!word || !meaning || !language) return;

    const newEntry = { word, meaning, language };
    setEntries([...entries, newEntry]);

    setWord("");
    setMeaning("");
    setLanguage("");
  }

  return (
    <div style={{ padding: "40px", fontFamily: "Arial" }}>
      <h1>🌍 Endangered Languages Archive</h1>

      <input
        type="text"
        placeholder="Language"
        value={language}
        onChange={(e) => setLanguage(e.target.value)}
      />

      <br /><br />

      <input
        type="text"
        placeholder="Word"
        value={word}
        onChange={(e) => setWord(e.target.value)}
      />

      <br /><br />

      <input
        type="text"
        placeholder="Meaning"
        value={meaning}
        onChange={(e) => setMeaning(e.target.value)}
      />

      <br /><br />

      <button onClick={addEntry}>Add Word</button>

      <hr />

      {entries.map((entry, index) => (
        <div key={index}>
          <strong>{entry.language}</strong> — {entry.word}: {entry.meaning}
        </div>
      ))}
    </div>
  );
}

export default App;
