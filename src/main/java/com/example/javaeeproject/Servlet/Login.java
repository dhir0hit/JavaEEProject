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
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Login
 * */
@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

/**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Object user = new User();
        request.setAttribute("User", user);
        request.getRequestDispatcher("/Login.jsp").forward(request,response);
    }

/**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean accountFound = false;
        if(username.isEmpty() || password.isEmpty() )
        {
            request.setAttribute("error", "username and password can not be empty");
            request.getRequestDispatcher("/Login.jsp").forward(request,response);
        }
        else {
            for (User user: UserDAO.getUserList()) {
                if (username.equals(user.getUsername()) || password.equals(user.getPassword())) {
                    request.getRequestDispatcher("/Login.jsp").forward(request, response);
                    accountFound = true;
                    break;
                }
            }

            if (!accountFound) {
                request.setAttribute("error", "username or password incorrect");
                request.getRequestDispatcher("/Login.jsp").forward(request,response);

            }
        }
    }
}
