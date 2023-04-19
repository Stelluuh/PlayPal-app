import React from 'react'
import { Route, Routes } from 'react-router-dom'
import logo from './logo.svg';
import './App.css';
import Home from './Home'

function App() {
  return (
    <div className="App">
      <Routes>
        <Route exact path='/' element={<Home />} />
      </Routes>
    </div>
  );
}

export default App;
