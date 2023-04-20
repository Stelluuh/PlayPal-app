import React, { useContext } from 'react'
import { UserContext } from './context/AuthContext'

const Home = () => {
  const { user } = useContext(UserContext) // useContext is a hook and it takes in the UserContext that we created in AuthContext.js file, which allows us to use the user information that was passed in as one of the values.
  console.log({user})

  if (!user || user.error ){
    return (<h3>Please Login or Signup</h3>)
  } else {
    return (
      <h3>{user.name} HomePage</h3>
    )
  }

 
}

export default Home
