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

    public static void addUser(String Username, String Password) {
        ArrayList<User> userList = new ArrayList<>();

        Connection conn = null;
        String query= null;
        DatabaseMetaData st = null;
        int rs;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            String dbURL = "jdbc:mysql://localhost:3306/QuizDB";

            conn = DriverManager.getConnection(dbURL, "root", "R0h1tKum@rDh!r");
            System.out.println("............connected...............");

            Statement statement = conn.createStatement();

//            query = "Insert Into User (Username, Password) VALUES ("+ Username + ", " + Password + ")";
            query = String.format("Insert Into User (Username, Password) Values ('%s', '%s')", Username, Password);
            rs = statement.executeUpdate(query);

            System.out.println("New User Created");

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
    }

}
