<%--
  Created by IntelliJ IDEA.
  User: Sungillest
  Date: 6/4/20
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h1>Login Page</h1>
        <div class="container">
            <h1>Please Log In</h1>
            <form action="/login.jsp" method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Log In">
            </form>
        </div>

</body>
</html>
