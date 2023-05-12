<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
<%--    added css link--%>
    <link rel="stylesheet" href="../../css/ads.css">
<%--    added background link--%>
    <link rel="stylesheet" href="../../css/background.css">
<%--    added js font style --%>
    <script src="https://kit.fontawesome.com/60b822ab43.js" crossorigin="anonymous"></script>

</head>
<title>Get Hired</title>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container center my-3">
    <h1>Here Are all the ads!</h1>
    <jsp:include page="/WEB-INF/partials/filter.jsp" />


    <div class="row">
            <c:forEach var="ad" items="${ads}">

                <div class="box col-md-5">
                    <article class="boxTwo">
                        <h2>Job: ${ad.title}</h2>
                        <p>Details: ${ad.description}</p>

                        <a href="/ads/view?adId=${ad.id}">Click For More:
                            <i id="viewAd" class="fa-regular fa-dollar-sign fa-bounce" style="color: #1760de;"></i>
                        </a>
                    </article>
                </div>

            </c:forEach>
    </div>
</div>
<%--    added js link--%>
<script src="../../js/ads.js"></script>
</body>
</html>
