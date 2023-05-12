<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="../css/background.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container mt-5">
    <h1>Please Log In</h1>
    <form action="/login" method="POST">
        <div class="form-group mb-3">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" required>
        </div>
        <div class="form-group mb-3">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" required>
        </div>
        <c:if test="${sessionScope.wrongPassword}">
            <p class="text-danger">${sessionScope.message}</p>
        </c:if>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
