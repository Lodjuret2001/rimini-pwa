import { Link } from 'react-router-dom';
import { FaHome, FaPizzaSlice, FaClipboardList, FaCog, FaQrcode } from 'react-icons/fa';

const Navigation = () => {
  const handleQRCodeClick = () => {
    alert('Open camera!');
  };

  return (
    <nav className="bottom-nav">
      <Link to="/" className="nav-item">
        <FaHome />
        Home
      </Link>
      <Link to="/meny" className="nav-item">
        <FaPizzaSlice />
        Menu
      </Link>
      <button onClick={handleQRCodeClick} className="nav-item">
        <FaQrcode />
        QR Code
      </button>
      <Link to="/orders" className="nav-item">
        <FaClipboardList />
        Orders
      </Link>
      <Link to="/settings" className="nav-item">
        <FaCog />
        Settings
      </Link>
    </nav>
  );
};

export default Navigation;
