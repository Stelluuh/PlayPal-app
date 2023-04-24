import React, { useState, useEffect, createContext } from 'react';

//This will create a new context object with a default value of null
const UserContext = createContext();

//this component wraps the rest of our application and provides the authentication context to all of its children. So we created this UserProvider that is wrapped around our application. It accepts a children prop wich will be the component that it wraps.
const UserProvider = ({ children }) => {
    const [user, setUser] = useState(null)
    const [loggedIn, setLoggedIn] = useState(false) //add loggedIn Flag
    
    const navigate = useNavigate();
    
    useEffect(() => {
        fetch("/me")
            .then(response => response.json())
            .then(data => {
                setUser(data)
                data.error ? setLoggedIn(false) : setLoggedIn(true) //set loggedIn to true if there is no error
            })
    }, [])

    const login = () => {
        setUser(user)
        setLoggedIn(true)
    }

    const logout = () => {
        setUser(null)
        setLoggedIn(false)
    }

    const signup = (user) => {
        setUser(user)
        setLoggedIn(true)
    }

    return( //The values in this UserContext.Provider is what we are passing down to other components so that they can use this. (they an use the user, login, logout, and signup)
        <UserContext.Provider value={{user, login, logout, signup, loggedIn}}>
            {children}
        </UserContext.Provider>
    );
}

export { UserContext, UserProvider };