<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ttmescal
  Date: 5/11/23
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="${ad.title}"/>
    </jsp:include>

    <link rel="stylesheet" href="../../css/background.css">
    <link rel="stylesheet" href="../../css/navbar.css">

    <style>
        body{
            overflow: hidden;
        }

        section {
            width: 100%;
            height: 100%;
        }

        .info {
            height: 100%;
        }
    </style>

</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>

<section class="container">


    <div class="info container d-flex justify-content-center align-items-center">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">${ad.title}</h5>
                <p class="card-text">${ad.description}</p>
                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
            </div>
        </div>
    </div>
</section>
</body>
</html>
