<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            margin: 0;
        }
        h2 {
            color: #333;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            box-sizing: border-box;
        }
        .card h3 {
            margin: 0 0 10px 0;
            color: #5cb85c;
        }
        .card p {
            margin: 5px 0;
            color: #555;
        }
        .card-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }
        .card-actions a {
            text-decoration: none;
            color: #fff;
            background-color: #5cb85c;
            padding: 10px 15px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .card-actions a:hover {
            background-color: #4cae4c;
        }
        .add-user {
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
            background-color: #337ab7;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .add-user:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
<h2>User List</h2>
<div class="card-container">
    <c:forEach var="user" items="${users}">
        <div class="card">
            <h3>${user.name}</h3>
            <p><strong>ID:</strong> ${user.id}</p>
            <p><strong>Email:</strong> ${user.email}</p>
            <p><strong>Phone Number:</strong> ${user.phoneNumber}</p>
            <div class="card-actions">
                <a href="${pageContext.request.contextPath}/users/edit/${user.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/users/delete?userId=${user.id}">Delete</a>
            </div>
        </div>
    </c:forEach>
</div>
<a href="${pageContext.request.contextPath}/users/new" class="add-user">Add New User</a>
</body>
</html>
