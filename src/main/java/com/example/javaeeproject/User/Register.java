package com.example.javaeeproject.User;

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
            /*TODO: Add else-if to check if user is already taken*/
            /* TODO: Display user account*/
            /*RequestDispatcher req =
                    request.getRequestDispatcher("SignUp.jsp");
            req.include(request, response);*/
            /*RequestDispatcher req =
                    request.getRequestDispatcher("Register2.jsp");
            req.forward(request, response);*/
        }
    }


}

