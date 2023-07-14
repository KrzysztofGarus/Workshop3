<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>
</head>
<body>
<div class="container-fluid">


        <h1>UsersCRUD</h1>
        <a href="<c:url value="/user/list"/>">Lista użytkowników</a>
            <h2>Dodaj użytkownika</h2>
            <form method="post">
                <div class="form-group">
                    <label for="userName">Nazwa</label>
                    <input name="userName" type="text" class="form-control" id="userName" placeholder="Nazwa">
                </div>
                <div class="form-group">
                    <label for="userEmail">Email</label>
                    <input name="userEmail" type="email" class="form-control" id="userEmail" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="userPassword">Hasło</label>
                    <input name="userPassword" type="password" class="form-control" id="userPassword" placeholder="Hasło">
                </div>

                <button type="submit" class="btn btn-primary">Zapisz</button>
            </form>
</div>
</body>
</html>

