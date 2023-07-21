package com.example.QuizApp.Repository;

import com.example.QuizApp.Model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface QuizRepository extends JpaRepository<Quiz, Integer> {
    @Query(value = "SELECT q FROM Quiz q WHERE q.typeid = ?1")
    public List<Quiz> findAllByTypeid (int typeid);
}
