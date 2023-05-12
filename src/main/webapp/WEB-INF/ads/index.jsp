<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
<%--    added css link--%>
    <link rel="stylesheet" href="../../css/ads.css">
<%--    added js font style --%>
    <script src="https://kit.fontawesome.com/60b822ab43.js" crossorigin="anonymous"></script>

</head>
<title>Get Hired</title>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container center">
    <h1>Here Are all the ads!</h1>
    <jsp:include page="/WEB-INF/partials/filter.jsp" />



        <c:forEach var="ad" items="${ads}">

            <div class="box">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a href="/ads/view?adId=${ad.id}">
                    <button class="adButton" name="viewAd"><i class="fa-regular fa-sack-dollar fa-bounce" style="color: #1760de;"></i></button>
                </a>
            </div>

        </c:forEach>

</div>
<%--    added js link--%>
<script src="../../js/ads.js"></script>
</body>
</html>
