<%@ page import="com.example.javaeeproject.Models.Quiz" %><%--
  Created by IntelliJ IDEA.
  User: rohit
  Date: 2022-08-17
  Time: 12:11 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quiz</title>
</head>
<body>
<form action="Quiz" method="post">

    <% Quiz quiz = (Quiz) request.getAttribute("quiz");%>
    <h1><%= quiz.Question %></h1>

    <% for (int i = 0; i < quiz.getOptions().length; i++) { %>
    <label>
        <%= quiz.getOptions()[i] %>
        <input type="radio" name="options" value="i" id="_<%= quiz.getOptions()[i].replace(" ", "_") %>_" />
    </label>
    <% } %>
    <h1><%= quiz.Level %></h1>

    <button type="submit">Submit</button>
</form>
</body>
</html>
