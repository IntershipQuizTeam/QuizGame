import * as React from 'react';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import { Container, Paper, Button} from '@mui/material';
import {useNavigate} from 'react-router-dom';

export default function Userform() {

  const paperStyle={padding: '50px 20px', width:600, margin:"20px auto"}
  const[username, setUsername]= React.useState('')
  const[email, setEmail]=React.useState('')
  const[password, setPassword]=React.useState('')
const navigate = useNavigate()
  const handleClick = (e) => {
    e.preventDefault()
    const user = {username, email, password}
    console.log(user)
    
    fetch("http://localhost:8080/user/add",{
      method:"POST",
      headers:{"Content-Type":"application/json"},
      body:JSON.stringify(user)
    }).then(() => {
      console.log("New user added")
    }
    )
    navigate('/signin');
  }


  return (
    <Container>
      <Paper elevation={6} style={paperStyle}>
        <h1>Add New User</h1>

    <Box
      component="form"
      sx={{
        '& > :not(style)': { m: 1, width: '50ch' },
      }}
      noValidate
      autoComplete="off"
    >
      
      <TextField id="Username" type = "text" label="Username" variant="outlined" fullWidth
      value={username}
      onChange={(e)=>setUsername(e.target.value)}
      />

      <TextField id="Email" type = "email" label="Email" variant="outlined" fullWidth
      value={email}
      onChange={(e)=>setEmail(e.target.value)}
      />

      <TextField id="Password" type = "password" label="Password" variant="outlined" fullWidth
      value={password}
      onChange={(e)=>setPassword(e.target.value)}
      />

      <Button variant="contained" color="secondary" onClick={handleClick} >
        Sign Up
        </Button>
    </Box>
    </Paper>
    </Container>
  );
}
