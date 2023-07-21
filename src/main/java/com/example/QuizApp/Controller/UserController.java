package com.example.QuizApp.Controller;

import com.example.QuizApp.Model.User;
import com.example.QuizApp.Repository.UserRepository;
import com.example.QuizApp.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/user")
@CrossOrigin
public class UserController {
    @Autowired
    //private UserService userService;
    private UserRepository userRepository;
    int usercount = 0;

    @PostMapping("/add")
    public String add(@RequestBody User user) {
        //userService.saveUser(user);
        userRepository.save(user);
        usercount ++;
        return "New User added.";
    }

    @GetMapping("/all")
    List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @GetMapping("/{id}")
    Optional<User> getUserById(@PathVariable int id) {
        return userRepository.findById(id);
    }

    @GetMapping("/getpass/{u1}")
    String getPassByUsername(@PathVariable String u1) {
        return  userRepository.findPassByusername(u1);
    }

}
























