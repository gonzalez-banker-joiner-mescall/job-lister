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
        body {
            overflow: hidden;
        }

        section {
            width: 100%;
            height: 100%;
        }

        .info {
            height: 50%;
        }

        .card {
            background-color: #fefae0;
        }
    </style>

</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>

<section class="container">
    <div class="info container d-flex justify-content-center align-items-center">
        <div class="card" style="width: 45%; height: 45%">
            <div class="card-body">
                <h5 class="card-title">${ad.title}</h5>
                <h6 class="card-subtitle mb-2 text-body-secondary">${ad.date}</h6>
                <p class="card-text">${ad.description}</p>
            </div>

            <div class="card-footer d-flex justify-content-between">
                <c:if test="${sessionScope.user != null}">
                    <form action="/ads/bookmark" method="post" class="mb-0">
                        <input type="hidden" value="${ad.id}" name="id">
                        <button class="btn btn-primary" type="submit">Save</button>
                    </form>
                </c:if>
                <a class="btn btn-primary  card-link" onclick="history.back()">Go Back</a>
            </div>
        </div>

    </div>
</section>
</body>
</html>
