#!/bin/bash

# Remove unnecessary files
echo "Removing unnecessary files..."
rm -rf src/assets
rm -f src/App.css
rm -f public/vite.svg

# Update index.css
cat > src/index.css <<EOL
:root {
  font-family: 'Inter', system-ui, Avenir, Helvetica, Arial, sans-serif;
  line-height: 1.5;
  font-weight: 400;

  --green: #2a5146;
  --red: #d13d3d;
  --background: #ffffff;

  color-scheme: light dark;
  color: var(--green);
  background-color: var(--background);

  font-synthesis: none;
  text-rendering: optimizeLegibility;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

body {
  margin: 0;
  background: var(--background);
  color: var(--green);
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  text-align: center;
}

a {
  font-weight: 500;
  color: var(--red);
  text-decoration: inherit;
}

button {
  border-radius: 8px;
  padding: 0.6em 1.2em;
  font-size: 1em;
  font-weight: 500;
  background-color: var(--green);
  color: #ffffff;
  border: none;
  cursor: pointer;
}

button:hover {
  background-color: var(--red);
}

h1 {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

nav {
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 1rem;
  background-color: var(--green);
}

.nav-item {
  color: #ffffff;
  font-size: 1.2rem;
  text-decoration: none;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.nav-item svg {
  font-size: 1.5rem;
}
EOL

# Update App.tsx
cat > src/App.tsx <<EOL
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navigation from './components/Navigation';
import Stamps from './pages/Stamps';
import Menu from './pages/Menu';
import Orders from './pages/Orders';
import Settings from './pages/Settings';
import Policy from './pages/Policy';

const App = () => {
  return (
    <Router>
      <div>
        <Routes>
          <Route path="/" element={<Stamps />} />
          <Route path="/meny" element={<Menu />} />
          <Route path="/orders" element={<Orders />} />
          <Route path="/settings" element={<Settings />} />
          <Route path="/policy" element={<Policy />} />
        </Routes>
        <Navigation />
      </div>
    </Router>
  );
};

export default App;
EOL

echo "Content updated and unnecessary files removed!"