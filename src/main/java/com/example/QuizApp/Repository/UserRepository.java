package com.example.QuizApp.Repository;

import com.example.QuizApp.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    @Query(value = "SELECT u.password FROM User u WHERE u.username = ?1")
    public String findPassByusername(String username);
}
