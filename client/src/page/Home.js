import * as React from 'react';
import Box from '@mui/material/Box';
import { Container, Paper, Button} from '@mui/material';
import {useNavigate} from 'react-router-dom';

export default function Home() {

  const paperStyle={padding: '50px 20px', width:600, margin:"20px auto"}
  
  const navigate = useNavigate()
  return (
     
    <Container>
      <Paper elevation={6} style={paperStyle}>
      {/* <h1>Select Your User Type</h1> */}

      <Box
        component="form"
        sx={{
          '& > :not(style)': { m: 1, width: '50ch' },
        }}
        noValidate
        autoComplete="off"
      >
        
        <Button variant="contained" color="secondary" onClick={() => navigate("signin")}>
          Sign In
        </Button>

        <Button variant="contained" color="secondary" onClick={() => navigate("signup")}>
          Sign Up
        </Button>

        {/* <Button component={Link} to="/user/add" variant="contained" color="secondary">
          Login By Guest
        </Button> */}


      </Box>

      {/* {username}
      {email}
      {password } */}
      
      </Paper>
    </Container>
  );
}
