<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <%--    added css link--%>
    <link rel="stylesheet" href="../../css/ads.css">
    <%--    added background link--%>
    <link rel="stylesheet" href="../../css/background.css">
    <%--    added js font style --%>
    <script src="https://kit.fontawesome.com/60b822ab43.js" crossorigin="anonymous"></script>

    <style>
        body {
            overflow-x: hidden;
        }

        .card {
            background-color: #fefae0 !important;
        }
    </style>

</head>
<title>Get Hired</title>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container center my-3">
    <h1 class="mb-3">Here Are all the ads!</h1>
    <jsp:include page="/WEB-INF/partials/filter.jsp"/>


    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="box col-md-6">
                <div class="boxTwo card mb-3">
                    <div class="card-body">
                        <h2 class="card-title">${ad.title}</h2>
                        <h6 class="card-subtitle mb-2 text-body-secondary">${ad.date}</h6>
                        <p class="card-text">${ad.description}</p>
                        <div class="card-footer bg-transparent">
                            <a class="card-link btn btn-primary " href="/ads/view?adId=${ad.id}">Click For More:
                                <i id="viewAd" class="fa-regular fa-dollar-sign fa-bounce" style="color: #fefae0;"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<%--    added js link--%>
<script src="../../js/ads.js"></script>
</body>
</html>
