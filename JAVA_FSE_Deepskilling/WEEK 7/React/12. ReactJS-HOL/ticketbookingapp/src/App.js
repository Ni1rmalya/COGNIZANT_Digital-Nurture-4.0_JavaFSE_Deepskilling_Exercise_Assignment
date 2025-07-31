import React, { useState } from 'react';
import './App.css';

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  const handleLogin = () => setIsLoggedIn(true);
  const handleLogout = () => setIsLoggedIn(false);

  // Element variable for conditional rendering
  let content;
  if (isLoggedIn) {
    content = <UserPage onLogout={handleLogout} />;
  } else {
    content = <GuestPage onLogin={handleLogin} />;
  }

  return (
    <div className="App">
      <h1>Ticket Booking App</h1>
      {content}
    </div>
  );
}

function GuestPage({ onLogin }) {
  return (
    <div>
      <h2>Welcome, Guest!</h2>
      <p>Here are the available flight details:</p>
      <ul>
        <li>Flight A101 - 10:00 AM</li>
        <li>Flight B202 - 02:30 PM</li>
        <li>Flight C303 - 06:45 PM</li>
      </ul>
      <h2><p>Please Sign up</p></h2>
      <button onClick={onLogin}>Login to Book</button>
    </div>
  );
}

function UserPage({ onLogout }) {
  return (
    <div>
      <h2>Welcome Back, User! 👤</h2>
      <p>You can now book your flight:</p>
      <button>Book Flight</button>
      <br /><br />
      <button onClick={onLogout}>Logout</button>
    </div>
  );
}

export default App;
