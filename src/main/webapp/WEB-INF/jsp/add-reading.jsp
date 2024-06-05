<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Glycemia Reading</title>
</head>
<body>
<h2>Add Glycemia Reading</h2>
<form action="${pageContext.request.contextPath}/add" method="post">
    <label for="date">Date:</label>
    <input type="date" id="date" name="date" required/><br/>
    <label for="time">Time:</label>
    <input type="time" id="time" name="time" required/><br/>
    <label for="level">Level:</label>
    <input type="number" step="0.01" id="level" name="level" required/><br/>
    <label for="user">User ID:</label>
    <input type="number" id="user" name="user.id" required/><br/>
    <input type="submit" value="Add Reading"/>
</form>
<a href="${pageContext.request.contextPath}/">Back to Home</a>
</body>
</html>
