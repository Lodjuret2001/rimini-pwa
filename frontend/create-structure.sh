#!/bin/bash

# Create folders
echo "Creating folders..."
mkdir -p src/components src/pages

# Create Navigation Component
cat > src/components/Navigation.tsx <<EOL
import React from 'react';
import { Link } from 'react-router-dom';
import { FaPizzaSlice, FaClipboardList, FaCog, FaRegFileAlt, FaQrcode } from 'react-icons/fa';

const Navigation = () => {
  return (
    <nav>
      <Link to="/orders" className="nav-item">
        <FaClipboardList />
        Orders
      </Link>
      <Link to="/meny" className="nav-item">
        <FaPizzaSlice />
        Menu
      </Link>
      <Link to="/" className="nav-item">
        <FaQrcode />
        QR Code
      </Link>
      <Link to="/settings" className="nav-item">
        <FaCog />
        Settings
      </Link>
      <Link to="/policy" className="nav-item">
        <FaRegFileAlt />
        Policy
      </Link>
    </nav>
  );
};

export default Navigation;
EOL

# Create Pages
echo "Creating pages..."

cat > src/pages/Stamps.tsx <<EOL
import React from 'react';

const Stamps = () => {
  return (
    <div>
      <h1>13 av 16</h1>
      <p>Färdiga stämplar</p>
      <img src="/path/to/logo.png" alt="Pizzeria Rimini Logo" style={{ width: '150px', marginTop: '1rem' }} />
    </div>
  );
};

export default Stamps;
EOL

cat > src/pages/Menu.tsx <<EOL
import React from 'react';

const Menu = () => {
  return (
    <div>
      <h1>Menu here</h1>
      <p>This is a placeholder for the menu page.</p>
    </div>
  );
};

export default Menu;
EOL

cat > src/pages/Orders.tsx <<EOL
import React from 'react';

const Orders = () => {
  return (
    <div>
      <h1>Orders Page</h1>
      <p>This is a placeholder for the orders page.</p>
    </div>
  );
};

export default Orders;
EOL

cat > src/pages/Settings.tsx <<EOL
import React from 'react';

const Settings = () => {
  return (
    <div>
      <h1>Settings Page</h1>
      <p>This is a placeholder for the settings page.</p>
    </div>
  );
};

export default Settings;
EOL

cat > src/pages/Policy.tsx <<EOL
import React from 'react';

const Policy = () => {
  return (
    <div>
      <h1>Policy Page</h1>
      <p>This is a placeholder for the policy page.</p>
    </div>
  );
};

export default Policy;
EOL

echo "Folders and files created successfully!"