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
    <title>Title</title>
</head>
<body>
<h1>Update Profile</h1>
<form action="/profile/update" method="post">
    <input id="id" name="id" class="form-control" type="hidden" value="${sessionScope.user.id}" required>
    <div class="form-group">
        <label for="username">Update Username</label>
        <input id="username" name="username" class="form-control" type="text" value="${sessionScope.user.username}"
               required>
    </div>
    <div class="form-group">
        <label for="bio">Update Bio</label>
        <input id="bio" name="bio" class="form-control" type="text" value="${sessionScope.user.bio}">
    </div>
    <div class="form-group">
        <label for="password">Update Password</label>
        <input id="password" name="password" class="form-control" type="hidden" value="${sessionScope.user.password}">
        <input id="updatedPassword" name="updatedPassword" class="form-control" type="text" value="">
    </div>
    <label>Supervillain or Henchman?
        <div class="form-group-select">
            <select name="villain" id="villain" class="form-select">
                <option value="${sessionScope.user.villain}" selected></option>
                <option value="true">Supervillain</option>
                <option value="false">Henchman</option>
            </select>
        </div>
        <%--        <div class="form-check">--%>
        <%--            <input class="form-check-input" type="radio" name="villain" value="${sessionScope.user.villain}" id="flexRadioDefault1">--%>
        <%--            <label class="form-check-label" for="flexRadioDefault1">--%>
        <%--                Supervillain--%>
        <%--            </label>--%>
        <%--        </div>--%>
        <%--        <div class="form-check">--%>
        <%--            <input class="form-check-input" type="radio" name="villain" value="${sessionScope.user.villain}" id="flexRadioDefault2">--%>
        <%--            <label class="form-check-label" for="flexRadioDefault2">--%>
        <%--                Henchman--%>
        <%--            </label>--%>
        <%--        </div>--%>
    </label>
    <input type="submit" class="btn btn-primary btn-block">
</form>
<div class="form-group">
    <label for="delete">Delete Profile (Your profile will be completely deleted it will be gone, kaput, completely
        destroyed, and you will never be able to come here again!...until you make another profile.)</label>
    <a href="/profile/delete?userId=${sessionScope.user.id}" onclick="return confirm('Are you sure about that?')">
        <button>Delete</button>
    </a>
</div>
</body>
</html>
