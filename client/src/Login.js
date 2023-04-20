import React, { useState, useContext } from 'react'
import { UserContext } from './context/AuthContext'

const Login = () => {
  const [username, setUsername] = useState('')
  const [password, setPassword] = useState('')
  const [error, setError] = useState('')
  const {login} = useContext(UserContext)


  const handleSubmit = (e) => {
    e.preventDefaul()
    fetch('/login', {
      method: "POST", 
      headers: { "Content-Type" : "application/json"},
      body: JSON.stringify({
        username: username,
        password: setPassword
      })
    })
    .then(response => response.json())
    .then((user) => {
      login(user)
    })
  }


  return (
    <div>
      <form onSubmit={handleSubmit}>
        <label> Username: </label>
        <input 
          type="text"
          id="username"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <br/>
        <label> Password: </label>
        <input 
          type="password"
          id="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <br/>
        <input type="submit"/>
      </form>
      <ul>
        <h3>{error}</h3>
      </ul>
    </div>
  )
}

export default Login
