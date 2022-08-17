<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Logged In</title>
</head>
<body>
<table style="width: 50%">
    <tr><td>
        <a>Welcome   <% request.getParameter("username"); %> User!!!! You have logged in.</a></td></tr>
    <tr></tr><tr><td></td><td></td><td><a
        href="Login.jsp"><b>Logout</b></a></td></tr>
</table>
</body>
</html>
