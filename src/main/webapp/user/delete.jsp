<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete user</title>
</head>
<body>
<h1>UsersCRUD</h1>

<h3>Szczegóły użytkownika</h3>
<p>id: ${userToDelete.getId()}</p>
<p>nazwa użytkownika: ${userToDelete.getUserName()}</p>
<p>email: ${userToDelete.getEmail()}</p>
<h2>Czy na pewno chcesz usunąć użytkownika?</h2>
<form method="POST">
    <input type="submit" name="confirmation" value="Yes">
    <input type="submit" name="confirmation" value="No">
</form>
</body>
</html>


