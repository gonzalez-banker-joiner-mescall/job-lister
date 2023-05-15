<%@ page import="com.mysql.cj.jdbc.Driver" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.codeup.adlister.models.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/background.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="container mb-3 mt-5">
    <div class="profile">
        <h1 class="mb-3">Welcome, ${sessionScope.user.username}!</h1>
        <div class="profile-header">
            <img class="profile-image border border-black border-4 rounded-4"
                 src="../showPic.jsp"
                 alt="profile image">
        </div>
        <div class="input-group m-3">
            <form method="post" action="profile" enctype="multipart/form-data">
            <input type="file" name="profilePic" class="form-control" id="inputGroupFile02">
                <input type="submit" value="upload">
            </form>
        </div>
        <div class="mt-3">
            <h3>Bio:</h3>
            <p id="bio">${sessionScope.user.bio}</p>
        </div>
        <div class="profile-edit">
            <a href="/profile/update" class="btn btn-primary">Edit Profile</a>
        </div>
    </div>
</div>

<div class="container mt-4">
    <c:if test="${sessionScope.user.villain}">
        <a href="/ads/create" class="btn btn-primary">Create Ad!</a>
        <h1 class="my-4">Here Are Your Ads</h1>
        <div class="row">
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-6">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h2 class="card-title">${ad.title}</h2>
                            <p class="card-text">${ad.description}</p>
                            <a href="/ads/update?adId=${ad.id}" class="btn btn-primary btn-sm">Update Ad</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </c:if>
</div>

</body>
</html>