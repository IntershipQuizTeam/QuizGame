import * as React from 'react';
import Box from '@mui/material/Box';
// import TextField from '@mui/material/TextField';
import { Container, Paper, Button} from '@mui/material';
import Link from '@mui/material/Link';

export default function Userform() {

  const paperStyle={padding: '50px 20px', width:600, margin:"20px auto"}
  // const[username, setUsername]= React.useState('')
  // const[email, setEmail]=React.useState('')
  // const[password, setPassword]=React.useState('')
  
  const handleClick = (e) => {
    e.preventDefault()
    console.log("click")
    // const user = {username, email, password}
    // console.log(user)
    
    // fetch("http://localhost:8080/user/add",{
    //   method:"POST",
    //   headers:{"Content-Type":"application/json"},
    //   body:JSON.stringify(user)
    // }).then(() => {
    //   console.log("New user added")
    // }
    // )
  }

  return (
    <Container>
      <Paper elevation={6} style={paperStyle}>

      <h1>QuizType</h1>

      <Box
        component="form"
        sx={{
          '& > :not(style)': { m: 1, width: '50ch' },
        }}
        noValidate
        autoComplete="off"
      >
        
        <Button variant="contained" color="secondary" onClick={handleClick}>
          Math
        </Button>

        <Button variant="contained" color="secondary" onClick={handleClick}>
            Literature
        </Button>

        <Button component={Link} to="/user/add" variant="contained" color="secondary">
          History
        </Button>
        
        <Button component={Link} to="/user/add" variant="contained" color="secondary">
          GeoGraphy
        </Button>


      </Box>

      
      </Paper>
    </Container>
  );
}
