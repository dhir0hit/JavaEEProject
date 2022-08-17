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
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
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
                    PrintWriter out = response.getWriter();
                    out.print("User name already taken");

                } else {
                    RequestDispatcher req = request.getRequestDispatcher("Login.jsp");
                    req.forward(request, response);

                }
            }
        }
    }


}
