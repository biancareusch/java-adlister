<%--
  Created by IntelliJ IDEA.
  User: bianca
  Date: 11/10/20
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register new user" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Please Log In</h1>
    <form action="/register" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">E-Mail</label>
            <input id="email" name="email" class="form-control" type="email">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="password">Confirm Password</label>
            <input id="password-confirm" name="password-confirm" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="submit">
    </form>
</div>
</body>
</html>
