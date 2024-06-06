<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h2>Edit User</h2>
<form action="${pageContext.request.contextPath}/users/edit/${user.id}" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${user.name}" required/><br/>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${user.email}" required/><br/>
    <label for="phone_number">Phone Number:</label>
    <input type="text" id="phone_number" name="phone_number" value="${User.phone_number}" required/><br/>
    <input type="submit" value="Update"/>
</form>
</body>
</html>
