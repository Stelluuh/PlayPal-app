import React, { useContext } from 'react'
import { UserContext } from './context/AuthContext'
import { NavLink } from 'react-router-dom'

const Navbar = () => {
  const { user, logout } = useContext(UserContext)

  const logoutUser = () => {
    fetch('/logout')
    .then(() => {
      logout()
    })
  }

  if (user) {
    return (
      <div>
        <h2>Welcome Back {user.name}</h2>
        <br />
        <button onClick={logout}>Logout</button>
      </div>
  
    )
  } else {
    return (
      <div>
        <NavLink to='/login'>
          <button>Login</button>
        </NavLink>
      </div>
    )
  }
}

export default Navbar
