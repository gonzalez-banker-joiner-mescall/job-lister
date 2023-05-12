<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/background.css">
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<div class="container">
    <h1>Please fill in your information.</h1>
    <form action="/register" method="post">

        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" required>
        </div>
<%--        checks if username is taken already--%>
    <c:if test="${sessionScope.usernameTaken}">
        <p class="text-bg-danger">${sessionScope.message}</p>
    </c:if>
        <div class="form-group">

            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" required>
        </div>
        <div class="form-group mb-3">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password" required>
        </div>
        <label>Are you a supervillain?
            <div class="form-check mb-3">
                <input class="form-check-input" type="radio" name="villain" value="true" id="flexRadioDefault1">
                <label class="form-check-label" for="flexRadioDefault1">
                    Yes
                </label>
            </div>
            <div class="form-check mb-3">
                <input class="form-check-input" type="radio" name="villain" value="false" id="flexRadioDefault2" checked>
                <label class="form-check-label" for="flexRadioDefault2">
                    No
                </label>
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </label>
    </form>
</div>
</body>
</html>