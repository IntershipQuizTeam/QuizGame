package com.example.QuizApp.Controller;

import com.example.QuizApp.Model.Quiz;
import com.example.QuizApp.Repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/quiz")
@CrossOrigin
public class QuizController {
    @Autowired
    private QuizRepository quizRepository;

    @PostMapping("/add")
    public String add(@RequestBody Quiz quiz) {
        quizRepository.save(quiz);
        return "new quiz added";
    }
}
