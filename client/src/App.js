import React from 'react'
import { Route, Routes } from 'react-router-dom'
import './App.css';
import Home from './Home'
import { UserProvider } from './context/AuthContext';


function App() {
  return (
    <div className="App">
      <UserProvider>
      <Routes>
        <Route exact path='/' element={<Home />} />
      </Routes>
      </UserProvider>
    </div>
  );
}

export default App;
