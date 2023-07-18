package com.example.QuizApp.Service;

import com.example.QuizApp.Model.User;

import java.util.List;

public interface UserService {

    User saveUser(User user);
    User getUserById(int id);
    User UpdateUser(User user);
    void deleteUserById (int id);


}
