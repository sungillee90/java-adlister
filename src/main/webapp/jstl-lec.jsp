<%--
  Created by IntelliJ IDEA.
  User: Sungillest
  Date: 6/4/20
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSTL</title>
</head>
<body>
    <% request.setAttribute("isAdmin", true); %>
    <c:choose>
        <c:when test = "${isAdmin}">
            <p>Welcome Admin User!</p>
        </c:when>
        <c:otherwise>
            <p>Welcome User.</p>
        </c:otherwise>
    </c:choose>

    <c:if test="${isAdmin}">
        <p>
            Secrete Admin Stuff
        </p>
    </c:if>

</body>
</html>
