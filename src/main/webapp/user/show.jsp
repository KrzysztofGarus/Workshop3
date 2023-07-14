<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show user</title>
</head>
<body>
<h1>UsersCRUD</h1>
<a href='<c:url value="/user/add"/>'>Dodaj użytkownika</a>
<a href='<c:url value="/user/list"/>'>Pokaż użytkowników</a>
<h2>Szczegóły użytkownika</h2>
<p>id: ${userToShow.getId()}</p>
<p>nazwa użytkownika: ${userToShow.getUserName()}</p>
<p>email: ${userToShow.getEmail()}</p>
</body>
</html>

