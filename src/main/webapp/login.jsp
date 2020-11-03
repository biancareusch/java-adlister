<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>login page</title>
</head>
<body>
<h1>Login</h1>

<form name="login" action="login.jsp" method="post">
    <label for="username">username</label><br>
    <input type="text" id="username" name="username"<%= request.getParameter("username") %>><br>
    <label for="password">password</label><br>
    <input type="password" id="password" name="password"<%= request.getParameter("password") %>><br>
    <input type="submit" Value="Submit"><br>
</form>



</body>
</html>