<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<h4>Registration</h4>
<form action="/registration" method="post">
    Name: <input type="text" name="name"><br><br>
    E-mail: <input type="email" name="email"><br><br>
    Phone Number: <input type="text" name="numberPhone"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Register"/>
</form>

</body>
</html>