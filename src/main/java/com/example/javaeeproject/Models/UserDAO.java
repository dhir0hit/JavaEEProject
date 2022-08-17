package com.example.javaeeproject.Models;


import java.sql.*;
import java.util.ArrayList;

public class UserDAO {
    public static ArrayList<User> getUserList (){
        ArrayList<User> userList = new ArrayList<>();

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

            query = "SELECT * from User";
            rs = statement.executeQuery(query);

            while(rs.next()) {
                /*
                * Getting data from Database
                * */
                User user = new User();
                user.setId(rs.getInt("Id"));
                user.setUsername(rs.getString("Username"));
                user.setPassword(rs.getString("Password"));
                user.setScores(rs.getString("Scores"));

                userList.add(user);
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
        return userList;
    }

}
