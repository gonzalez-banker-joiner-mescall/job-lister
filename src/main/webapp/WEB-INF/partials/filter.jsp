<%--
  Created by IntelliJ IDEA.
  User: ttmescal
  Date: 5/11/23
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="btn-group">
    <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Filter
    </button>
    <ul class="dropdown-menu">
<%--        need to connect to the proper parameter for category chosen--%>
        <li><a class="dropdown-item" href="/ads/category?adCat=${ad.category}">Category</a></li>
        <li><a class="dropdown-item" href="/ads/date?adDate=${ad.created}">Date</a></li>
        <li><a class="dropdown-item" href="employer">Employer</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="clear">Clear Filter</a></li>
    </ul>
</div>
