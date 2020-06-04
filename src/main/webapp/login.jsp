<%--
  Created by IntelliJ IDEA.
  User: Sungillest
  Date: 6/4/20
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>

    <form>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
        <p>"method" attribute: <%= request.getMethod() %></p>
    </form>


</body>
</html>
