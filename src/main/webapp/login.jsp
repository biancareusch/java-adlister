<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="partials/header.jsp">
    <jsp:param name="title" value="Login Page"/>
    </jsp:include>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<div class="container">
    <div class="row justify-content-center">
        <div class="col">
            <h1>Login</h1>
            <form name="login" action="login.jsp" method="post">
                <label for="username">username</label><br>
                <input type="text" id="username" name="usernameVal"><br>
                <label for="password">password</label><br>
                <input type="password" id="password" name="passwordVal"><br>
                <input type="submit" Value="Submit"><br>
            </form>
        </div>
    </div>
</div>
<c:choose>
    <c:when test="${param.usernameVal == 'admin' && param.passwordVal == 'password'}">
        <% response.sendRedirect("/profile.jsp");%>
    </c:when>
</c:choose>

<%@include file="partials/boostrap.jsp" %>
</body>
</html>