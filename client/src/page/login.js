import React, { useState } from "react";

import { Container, Paper, Button} from '@mui/material';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import { Navigate, useParams} from 'react-router-dom';
// import './style.css';

function App() {
    
  const [errorMessages, setErrorMessages] = useState({});
  const [isSubmitted, setIsSubmitted] = useState(false);
  const paperStyle={padding: '50px 20px', width:600, margin:"20px auto"}
  const[username, setUsername]= React.useState('')
  const[password, setPassword]=React.useState('')

  // User Login info

  const database = [
    {
      username: "user1",
      password: "pass1"
    },
    {
      username: "user2",
      password: "pass2"
    }
  ];

  const errors = {
    uname: "Invalid Username",
    pass: "Invalid Password"
  };
  // const {usernamepar} = useParams();
  const handleSubmit = (event) => {
    //Prevent page reload
    event.preventDefault();
    console.log("aaaaaaaaaa");
    // {usernamepar} = username;
    console.log("bbbbbb");
    // const params = new URLSearchParams({
    //   u1: username
    // })
    // const url = 'localhost:8080/user/getpass?${ params.toString()}'
    // fetch(url).then(console.Log);


    
    // Find user login info
    const userData = database.find((user) => user.username === username);

    // Compare user info
    if (userData) {
      if (userData.password !== password) {
        // Invalid password
        setErrorMessages({ name: "pass", message: errors.pass });
      } else {
        setIsSubmitted(true);
        // <Navigate to="/signup" replace={true} />
      }
    } else {
      // Username not found
      setErrorMessages({ name: "uname", message: errors.uname });
    }
  };

  // Generate JSX code for error message
  const renderErrorMessage = (name) =>
    name === errorMessages.name && (
      <div className="error">{errorMessages.message}</div>
    );

  // JSX code for login form
  const renderForm = (


          <Container>
            <Paper elevation={6} style={paperStyle}>
              <h1>Sign In</h1>

              <Box
              component="form"
              sx={{ 
                '& > :not(style)': { m: 1, width: '50ch' },
              }}
              noValidate
              autoComplete="off"
              >

                <TextField id="Username" type = "text" name = "uname" label="Username" variant="outlined" fullWidth
                value={username} required
                onChange={(e)=>setUsername(e.target.value)}
                />
                {renderErrorMessage("uname")}

                <TextField id="Password" type = "password" name = "pass "label="Password" variant="outlined" fullWidth
                value={password} required
                onChange={(e)=>setPassword(e.target.value)}
                />
                {renderErrorMessage("pass")}

                <Button variant="contained" color="secondary" onClick={handleSubmit}>
                  Sign In
                </Button>
              </Box>
            </Paper>
          </Container>


  );

  return (
    <div className="app">
        {/* <div className="title">Sign In</div> */}
        {isSubmitted ? <Navigate to="/quiztype" replace={true} /> : renderForm}
    </div>
  );
}

export default App;