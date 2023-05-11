<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>
    <jsp:include page="/WEB-INF/partials/filter.jsp" />

    <div class="row">
        <c:forEach var="ad" items="${ads}">

            <div class="col-md-4 border border-primary">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <a href="/ads/view?adId=${ad.id}">
                    <button name="viewAd">CLICK HERE TO SEE AD</button>
                </a>
            </div>

        </c:forEach>
    </div>
</div>

<%--BOOTSTRAP--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>--%>
</body>
</html>
