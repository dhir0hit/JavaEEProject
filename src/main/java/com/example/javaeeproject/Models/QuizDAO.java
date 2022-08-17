package com.example.javaeeproject.Models;

import java.sql.*;
import java.util.ArrayList;

public class QuizDAO {
    public static ArrayList<Quiz> getQuizlist (){
        ArrayList<Quiz> quizlist = new ArrayList<>();

        Connection conn = null;
        String query= null;
        DatabaseMetaData st = null;
        ResultSet rs = null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//            String dbURL = "jdbc:oracle:thin:SYSTEM/rohitdhir@localhost:1521:XE";
//            String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
            String dbURL = "jdbc:mysql://localhost:3306/QuizDB";

            conn = DriverManager.getConnection(dbURL, "root", "R0h1tKum@rDh!r");
            System.out.println("............connected...............");

            Statement statement = conn.createStatement();

            query = "SELECT * from Quiz";

            rs = statement.executeQuery(query);

            while(rs.next()) {
                /*
                * Getting data from database
                * */
                Quiz quiz = new Quiz();

                quiz.setId(rs.getInt("Id"));
                quiz.setQuestion(rs.getString("Question"));
                quiz.setAnswer(rs.getString("Answer"));
                quiz.setLevel(rs.getString("Level"));
                quiz.setOptions(rs.getString("Options"));

                quizlist.add(quiz);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try{
                if(conn!=null && !conn.isClosed()){
                    conn.close();
                    System.out.println("..........closed...........");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return quizlist;
    }
}
