<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Glycemia Readings</title>
</head>
<body>
<h2>Glycemia Readings</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Time</th>
        <th>Level</th>
        <th>User ID</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="reading" items="${readings}">
        <tr>
            <td>${reading.id}</td>
            <td>${reading.date}</td>
            <td>${reading.time}</td>
            <td>${reading.level}</td>
            <td>${reading.user.id}</td>
            <td>
                <a href="${pageContext.request.contextPath}/delete/${reading.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="${pageContext.request.contextPath}/add">Add New Reading</a>

</body>
</html>
