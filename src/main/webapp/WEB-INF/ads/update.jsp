<%--
  Created by IntelliJ IDEA.
  User: zluigon
  Date: 5/11/23
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Update Ads"/>
    </jsp:include>
</head>
<body>

<jsp:include page="../partials/navbar.jsp"/>

<div class="container mt-5">
<form action="/ads/update" method="post">
    <input type="hidden" value="${ad.id}" name="id">
    <input type="hidden" value="${ad.userId}" name="userId">

    <div class="form-group mb-3">
        <label for="updateTitle">Update Title:</label>
        <input class="form-control" type="text" name="updateTitle" id="updateTitle" value="${ad.title}">
    </div>

    <div class="form-group mb-3">
        <label for="updateDescription">Update Description:</label>
        <textarea class="form-control" name="updateDescription" id="updateDescription" rows="4">${ad.description}</textarea>
    </div>

    <button type="submit" class="btn btn-primary">Save</button>
</form>
    <a href="/ads/delete?adId=${ad.id}" onclick="return confirm('Are you sure about that?')" class="btn btn-danger">Delete</a>
</div>
</body>
</html>
