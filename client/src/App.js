// import { Create } from '@mui/icons-material';
import { Routes, Route, BrowserRouter } from "react-router-dom"

// import Selectusertype from './page/Home'
// import Createuser from './page/Adduser'
// import SignUp from './page/Signup';
import './App.css';
import Appbar from './layout/Appbar'
import Home from './page/Home'
import Signin from './page/login'
import Signup from './page/Signup'
import QuizType from './page/QuizType'
import Quiz  from "./page/quiz";

function App() {
  return (
    <div className="App">

        {/* <Quiz/> */}
        <Appbar/>
        
        <BrowserRouter>
          <Routes>
          <Route path="signin" element={<Signin />}/>
          <Route path="signup" element={<Signup />}/>
          <Route path = "/" element = {<Home />}/>
          <Route path = "quiztype" element = {<QuizType />}/>
            
          </Routes>
        </BrowserRouter>
    </div>
  );
}

export default App;
