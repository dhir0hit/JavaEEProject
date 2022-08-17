package com.example.javaeeproject.Servlet;

import com.example.javaeeproject.Models.Quiz;
import com.example.javaeeproject.Models.QuizDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "QuizServlet", value = "/Quiz")
public class QuizServlet extends HttpServlet {

    public QuizServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuizDAO quizDAO = new QuizDAO();
        Quiz quiz = quizDAO.getRandomQuiz();
        request.setAttribute("quiz", quiz);
        request.getRequestDispatcher("/quiz.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getParameter("options");
        System.out.println(option.getClass());
        System.out.println(option);

        QuizDAO quizDAO = new QuizDAO();
        Quiz quiz = quizDAO.getRandomQuiz();
        request.setAttribute("quiz", quiz);

        RequestDispatcher req = request.getRequestDispatcher("quiz.jsp");
        req.include(request,response);
    }


}
