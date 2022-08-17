package com.example.javaeeproject.Models;

import com.mysql.cj.x.protobuf.MysqlxExpr;

import java.util.ArrayList;

/**
 * User Model
 * */
public class Quiz {
    public Integer Id;
    public String Question;
    public String Answer;
    public String Level;
    public String Options;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getQuestion() {
        return Question;
    }

    public void setQuestion(String question) {
        Question = question;
    }

    public String getAnswer() {
        return Answer;
    }

    public void setAnswer(String answer) {
        Answer = answer;
    }

    public String getLevel() {
        return Level;
    }

    public void setLevel(String level) {
        Level = level;
    }

    /**
     * To Get Options from Quiz
     * @return String List of Options
     * */
    public String[] getOptions() {
        return Options.split(";");
    }

    // TODO : change if want to use same algorithm as "User.newScores"
    public void setOptions(String options) {
        Options = options;
    }
}
