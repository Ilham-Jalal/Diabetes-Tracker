<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glycemia Readings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: white;
            background-size: cover;
            background-position: center;
            color: #333;
        }
        header {
            background-color: rgb(91, 70, 103);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
            height: 80px;
            color: white;
        }
        header img {
            height: 60px;
            border-radius: 50%;
        }
        header .nav-links {
            display: flex;
            align-items: center;
        }
        header a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
            margin: 0 15px;
            transition: color 0.3s;
        }
        header a:hover {
            color: #f8cd3f;
        }
        header .add-button {
            padding: 10px 20px;
            background-color: #1a73e8;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        header .add-button:hover {
            background-color: #155ab5;
        }
        h2 {
            color: #333;
            margin: 20px;
            text-align: center;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin: 10px;
            padding: 20px;
            width: 250px;
            box-sizing: border-box;
        }
        .card h3 {
            margin-top: 0;
            color: #1a73e8;
        }
        .card p {
            margin: 5px 0;
            color: #333;
        }
        .card a {
            display: inline-block;
            margin-top: 10px;
            color: #ff4c4c;
            text-decoration: none;
            font-weight: bold;
        }
        .card a:hover {
            text-decoration: underline;
        }
    </style>
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
<h2>Glycemia Readings</h2>
<div class="card-container">
    <c:forEach var="reading" items="${readings}">
        <div class="card">
            <h3>Reading ID: ${reading.id}</h3>
            <p><strong>Date:</strong> ${reading.date}</p>
            <p><strong>Time:</strong> ${reading.time}</p>
            <p><strong>Level:</strong> ${reading.level}</p>
            <a href="${pageContext.request.contextPath}/delete/${reading.id}">Delete</a>
        </div>
    </c:forEach>
</div>
</body>
</html>
