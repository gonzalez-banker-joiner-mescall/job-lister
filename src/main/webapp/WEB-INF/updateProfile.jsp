<%--
  Created by IntelliJ IDEA.
  User: davidbanker
  Date: 5/11/23
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Update Your Profile"/>
    </jsp:include>

    <link rel="stylesheet" href="../css/background.css">
</head>
<body>

<jsp:include page="partials/navbar.jsp"/>


<div class="container-fluid mt-5">
    <h1 class="text-center">Update Profile</h1>
    <form action="/profile/update" method="post">
        <input id="id" name="id" class="form-control" type="hidden" value="${sessionScope.user.id}" required>
        <div class="form-group mb-3">
            <label for="username">Update Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${sessionScope.user.username}"
                   required>
        </div>
        <div class="form-group mb-3">
            <label for="bio">Update Bio</label>
            <input id="bio" name="bio" class="form-control" type="text" value="${sessionScope.user.bio}">
        </div>
        <div class="form-group mb-3">
            <label for="password">Update Password</label>
            <input id="password" name="password" class="form-control" type="hidden"
                   value="${sessionScope.user.password}">
            <input id="updatedPassword" name="updatedPassword" class="form-control" type="text" value="">
        </div>
        <div class="form-group-select mb-3">
            <label>Supervillain or Henchman?
                <select name="villain" id="villain" class="form-select">
                    <option value="${sessionScope.user.villain}" selected></option>
                    <option value="true">Supervillain</option>
                    <option value="false">Henchman</option>
                </select>
            </label>
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
    <div class="form-group mb-3">
        <label>Delete Profile (Your profile will be deleted it will be gone, kaput, completely
            destroyed, and you will never be able to come here again!...until you make another profile.)</label>
    </div>
    <a href="/profile/delete?userId=${sessionScope.user.id}" onclick="return confirm('Are you sure about that?')">
        <button type="submit" class="btn btn-danger">Delete</button>
    </a>
</div>

</body>
</html>
