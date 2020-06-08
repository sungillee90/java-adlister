<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sungillest
  Date: 6/8/20
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>All the Ads</title>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />
<c:forEach var="ad" items="${ads}">
    <div id="ad- ${ad.id}">
        <h3>${ad.title}</h3>
        <p>${ad.description}</p>
        <span>posted by ${ad.userId}</span>
    </div>
</c:forEach>
</body>
</html>
