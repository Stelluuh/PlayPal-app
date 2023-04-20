import React, { useState, useContext } from 'react'
import { UserContext } from './context/AuthContext'


const Signup = () => {
  const [name, setName] = useState("")
  const [username, setUsername] = useState("")
  const [email, setEmail] = useState("")
  const [password, setPassword] = useState("")
  const [passwordConfirmation, setPasswordConfirmation] = useState("")
  const [errorsList, setErrorsList] = useState([])
  const {signup} = useContext(UserContext)


  const handleSubmit = (e) => { //here we want the user to be created
    e.preventDefault()
    fetch('/signup', {
      method: "POST",
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify({
        name: name,
        username: username,
        email: email,
        password: password,
        password_confirmation: passwordConfirmation
      })
    })
    .then(response => response.json())
    .then(user => {
      if (!user.errors) {
        signup(user) //this puts it into state. We are sending the user that just signed up into signup in our AuthContext.js file.
      } else {
        setUsername('')
        setPassword('')
        setPasswordConfirmation('')
        const allErrors = user.errors.map(e => <li>{e}</li>)
        setErrorsList(allErrors)
      }
    })
    
  }


  return (
    <div>
      <form onSubmit={handleSubmit}>
        <label> Name: </label>
        <input 
          type="text"
          id="name"
          value={name}
          onChange={(e) => setName(e.target.value)}
        />
        <label> Username: </label>
        <input 
          type="text"
          id="username"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <label> Email(optional): </label>
        <input 
          type="text"
          id="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
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
        <label> Password Confirmation: </label>
        <input 
          type="password"
          id="password_confirmation"
          value={passwordConfirmation}
          onChange={(e) => setPasswordConfirmation(e.target.value)}
        />
        <br/>
        <input type="submit"/>
      </form>
      <ul>
        {errorsList}
      </ul>
      
    </div>
  )
}

export default Signup
