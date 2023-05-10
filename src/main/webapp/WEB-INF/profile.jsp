<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="../css/profile.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="profile">
        <div class="profile-header">
            <img class="profile-image" src="https://s3-alpha.figma.com/hub/file/948140848/1f4d8ea7-e9d9-48b7-b70c-819482fb10fb-cover.png" alt="user_profile">
        </div>
        <div class="profile-edit">
            <button class="btn btn-large" id="edit-btn">Edit Profile</button>
        </div>
    </div>

    <div>
        <h3>BIO</h3>
        <p id="bio">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam non quam lacus suspendisse faucibus. Eget arcu dictum varius duis at.</p>
    </div>

    <div class="profile-edit">
        <button class="btn btn-large" id="edit-Bio-btn">Edit Bio</button>
    </div>


    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <a href="/ads/create">Create Ad!</a>
    </div>

    <div class="container">
        <h1>Here Are Your Ads</h1>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>



<script src="../js/profile.js"></script>
</body>
</html>
