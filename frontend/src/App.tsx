import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navigation from './components/Navigation';
import Home from './pages/Home';
import Menu from './pages/Menu';
import Orders from './pages/Orders';
import Settings from './pages/Settings';

const App = () => {
  return (
    <Router>
      <div>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/meny" element={<Menu />} />
          <Route path="/orders" element={<Orders />} />
          <Route path="/settings" element={<Settings />} />
        </Routes>
        <Navigation />
      </div>
    </Router>
  );
};

export default App;
