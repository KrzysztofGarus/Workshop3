<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User list</title>
</head>
<body>
    <h1>UsersCRUD</h1>
    <a href='<c:url value="/user/add"/>'>Dodaj użytkownika</a>
    <h2>Lista użytkowników</h2>
    <table class="table">
        <tr align="center">
            <th>Id</th>
            <th>Nazwa użytkownika</th>
            <th>Email</th>
            <th>Akcja</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr align="left">
                <td>${user.id}</td>
                <td>${user.userName}</td>
                <td>${user.email}</td>
                <td>
                    <a href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
                    <a href='<c:url value="/user/edit?id=${user.id}"/>'>Edytuj</a>
                    <a href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

