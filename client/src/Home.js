import React, { useContext } from 'react'
import { UserContext } from './context/AuthContext'

const Home = () => {
  const { user } = useContext(UserContext)
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
