<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <link rel="stylesheet" href="./css/landingpage.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to Minion Adlister!</h1>
    </div>
<div class="minion-container">
<div class="minion-text">
    <img class="minion-message" src="./assets/img/minon-messageimg.png">
    <p>Hello Minions this is a site fore you to accept jobs from your supreme leader, Gru and senior level minions.</p>
</div>
</div>



</body>
</html>
