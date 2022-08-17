package com.example.javaeeproject.Servlet;

import com.example.javaeeproject.Models.User;
import com.example.javaeeproject.Models.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Object user = new User();
        request.setAttribute("User", user);
        request.getRequestDispatcher("/SignUp.jsp").forward(request,response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isIdenticalUsername = false;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String contact = request.getParameter("age");

        if(username.isEmpty() || password.isEmpty() || contact.isEmpty()) {

            PrintWriter out = response.getWriter();
            out.print("Error");
        } else
        {
            for (User user: UserDAO.getUserList()) {
                if (username.equals(user.getUsername())){
                    request.setAttribute("error", "username already taken");
                    request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
                    isIdenticalUsername = true;
                    break;
                }
            }

            if (isIdenticalUsername) {
                request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
            }
        }
    }


}
