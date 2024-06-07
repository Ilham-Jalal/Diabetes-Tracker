<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Glycemia Reading</title>
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
            margin-bottom: 20px;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            max-width: 400px;
            width: 100%;
            box-sizing: border-box;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }
        input[type="date"],
        input[type="time"],
        input[type="number"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #1a73e8;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #155ab5;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            color: #1a73e8;
            text-decoration: none;
        }
        a:hover {
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
<h2>Add Glycemia Reading</h2>
<form action="${pageContext.request.contextPath}/add" method="post">
    <label for="date">Date:</label>
    <input type="date" id="date" name="date" required/><br/>
    <label for="time">Time:</label>
    <input type="time" id="time" name="time" required/><br/>
    <label for="level">Level:</label>
    <input type="number" step="1" id="level" name="level" required/><br/>
    <label for="user">User ID:</label>
    <input type="number" id="user" name="user_id" required/><br/>
    <input type="submit" value="Add Reading"/>
</form>
<a href="${pageContext.request.contextPath}/">Back to Home</a>
</body>
</html>
