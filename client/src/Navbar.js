import React, { useContext } from 'react'
import { UserContext } from './context/AuthContext'
import { NavLink, useNavigate } from 'react-router-dom'

const Navbar = () => {
  const { user, logout, loggedIn } = useContext(UserContext)
  const navigate = useNavigate()

  const logoutUser = () => {
    fetch('/logout', {
      method: 'DELETE',
      headers: { 'Content-Type': 'application/json' }
    })
    .then(() => {
      logout()
      navigate('/')
    })
  }

  if (loggedIn) {
    return (
      <div>
        <h2>Hello {user.name}</h2>
        <br />
        <button onClick={logoutUser}>Logout</button>
      </div>
  
    )
  } else {
    return (
      <div>
        <br />
        <NavLink to='/login'>
          <button>Login</button>
        </NavLink>
        <NavLink to='/signup'>
          <button>Signup</button>
        </NavLink>
        <hr />
      </div>
    )
  }
}

export default Navbar
