package com.example.javaeeproject.Models;

import java.util.Arrays;
import java.util.List;

/**
 * User Model
 * */
public class User {
    private Integer Id;
    private String Username;
    private String Password;
    private String Age;
    private String Scores;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getAge() {
        return Age;
    }

    public void setAge(String age) {
        Age = age;
    }

    /**
     * To Get Scores from user
     * @return String List of Scores
     * */
    public String[] getScores() {
        return Scores.split(";");
    }

    /**
    * To Add New Scores in User Account.
    * Scores get converted into list and append/added new value (score) to it
    * and converted back to String and inserted to list
    * @param score gets String value of scores earned by user
    * */
    public void newScore(String score) {
        List<String> scorelist = Arrays.asList(Scores.split(";"));
        scorelist.add(score);
        Scores =  scorelist.toString();
    }

    public void setScores(String scores) {
        Scores = scores;
    }
}
