<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="../css/background.css">
    <style>
        .hangingMinions {
            position: absolute;
            height: 650px;
            width: 280px;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<img class="hangingMinions" src="./assets/img/hangingout.png" alt="minions hanging out" style="float: left; z-index: 102" >
<div class="container mt-5 col-md-6">
    <h1>Please Log In</h1>
    <form action="/login" method="POST">
        <div class="form-group mb-3">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" required>
        </div>
        <c:if test="${sessionScope.wrongUsername}">
            <p class="text-danger">${sessionScope.messageUser}</p>
        </c:if>
        <div class="form-group mb-3">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" required>
        </div>
        <c:if test="${sessionScope.wrongPassword}">
            <p class="text-danger">${sessionScope.messagePW}</p>
        </c:if>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
