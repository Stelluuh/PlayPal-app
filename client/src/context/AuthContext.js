import React, { useState, useEffect } from 'react';

const UserContext = React.createContext();

function UserProvider({ children }) {
    const [user, setUser] = useState({})

    useEffect(() => {
        fetch("/me")
            .then(response => response.json())
            .then(data => {
                setUser(data)
            })
    }, [])

    const login = () => {}
    const logout = () => {}
    const signup = () => {}

    return(
        <UserContext.Provider value={{user, login, logout, signup}}>
            {children}
        </UserContext.Provider>
    );
}

export { UserContext, UserProvider };