<%--
  Created by IntelliJ IDEA.
  User: Sungillest
  Date: 6/4/20
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>

<%-- Directive "page" directives--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Example</title>
</head>
<body>
    <%@ include file="partials-lec/navbar-lec.jsp"%>
    <%--JSP tags %! --%>
    <%! int counter = 0; %> <!-- instance variable -->
    <!-- This is an HTML comment -->
    <% counter += 1; %>
    <h1>This is an example page! <%= counter %> </h1>

    <h1>Implicit Obj in JSP</h1>
    <p>Path: <%= request.getRequestURL() %></p>
    <p>Query String: <%= request.getQueryString() %></p>
    <p>"name" parameter: <%= request.getParameter("name") %></p>
    <p>"method" attribute: <%= request.getMethod() %></p>
    <p>User-Agent header: <%= request.getHeader("user-agent") %></p>

    <h1>JSP Expression Lang EL</h1>
    <p>User-Agent header: ${header["user-agent"]}</p>
    <p>"page_no" parameter: ${param.page_no}</p>


    <% request.setAttribute("name", "Jen"); %> <!-- setAttribute will pass "" into the name -->
    <p>Hello ${name}!</p>

    <%@ include file="partials-lec/footer-lec.jsp"%>


</body>
</html>
