<!DOCTYPE html>
<html>
<head>
    <title>Create User</title>
</head>
<body>
<h2>Create User</h2>
<form action="${pageContext.request.contextPath}/users/new" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required/><br/>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required/><br/>
    <label for="phone_number">Phone Number:</label>
    <input type="text" id="phone_number" name="phone_number" required/><br/>
    <input type="submit" value="Create"/>
</form>
</body>
</html>