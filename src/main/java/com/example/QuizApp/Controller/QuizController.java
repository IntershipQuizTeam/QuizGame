package com.example.QuizApp.Controller;

import com.example.QuizApp.Model.Quiz;
import com.example.QuizApp.Repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/quiz")
@CrossOrigin("localhost:")
public class QuizController {
    @Autowired
    private QuizRepository quizRepository;

    @PostMapping("/add")
    public String add(@RequestBody Quiz quiz) {
        quizRepository.save(quiz);
        return "new quiz added";
    }

    @GetMapping("/all")
    List<Quiz> getAllQuiz() {
        return quizRepository.findAll();
    }

    @GetMapping("/allbytype/{typeid}")
    List<Quiz> getAllByTypeId(@PathVariable int typeid) {
        return quizRepository.findAllByTypeid(typeid);
    }
}
