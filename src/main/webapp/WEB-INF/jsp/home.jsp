<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 07/06/2024
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header>
<img src="https://i.pinimg.com/474x/ad/fb/57/adfb570e1403bbf167c259a59ebae37e.jpg" alt="Logo" />
<div class="nav-links">
    <a href="http://localhost:8082/Diabetes_Tracker_war_exploded/">Home</a>
    <a href="http://localhost:8082/Diabetes_Tracker_war_exploded/glucose-chart">Glucose Chart</a>
    <a href="http://localhost:8082/Diabetes_Tracker_war_exploded/users/">User</a>
    <a class="add-button" href="${pageContext.request.contextPath}/add">Add New Reading</a>
</div>
</header>
</body>
</html>
