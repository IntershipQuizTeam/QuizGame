package com.example.QuizApp.Controller;

import com.example.QuizApp.Model.User;
import com.example.QuizApp.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.security.PublicKey;

@RestController
@RequestMapping("/user")
@CrossOrigin
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/add")
    public String add(@RequestBody User user) {
        userService.saveUser(user);
        return "New User added.";
    }

}
