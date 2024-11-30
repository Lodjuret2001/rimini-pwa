#!/bin/bash

# Update index.css for proper bottom navigation styling and responsive layout
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
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

#root {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
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

main {
  flex-grow: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: var(--green);
  color: #ffffff;
  text-align: center;
}

/* Bottom navigation styles */
.bottom-nav {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  background-color: var(--green);
  display: flex;
  justify-content: space-around;
  padding: 0.8rem 0;
  box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.2);
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

.nav-item button {
  all: unset;
  display: flex;
  flex-direction: column;
  align-items: center;
}
EOL

# Update all page components to use the <main> container
PAGES=("Home" "Menu" "Orders" "Settings")

for PAGE in "${PAGES[@]}"; do
  cat > src/pages/${PAGE}.tsx <<EOL
const ${PAGE} = () => {
  return (
    <main>
      <h1>${PAGE} Page</h1>
      <p>This is a placeholder for the ${PAGE} page.</p>
    </main>
  );
};

export default ${PAGE};
EOL
done

# Final confirmation
echo "CSS and page components updated successfully! The bottom navigation bar and responsiveness issues have been addressed."