<%--
  Created by IntelliJ IDEA.
  User: ttmescal
  Date: 5/11/23
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--    added background link--%>
<link rel="stylesheet" href="../../css/background.css">

<%--<link rel="stylesheet" href="../../css/ads.css">--%>

<body>
<div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Filter
    </button>
    <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="/ads/bookmark">Bookmarks</a></li>
        <li>
            <hr class="dropdown-divider">
        </li>
        <%--        need to connect to the proper parameter for category chosen--%>
        <li><a class="dropdown-item" href="/ads/category?adCat=1">Construction & Maintenance</a></li>
        <li><a class="dropdown-item" href="/ads/category?adCat=2">Research & Development</a></li>
        <li><a class="dropdown-item" href="/ads/category?adCat=3">Operations & Logistics</a></li>
        <li><a class="dropdown-item" href="/ads/category?adCat=4">Combat & Defense</a></li>
        <li><a class="dropdown-item" href="/ads/category?adCat=5">Miscellaneous</a></li>
        <li>
            <hr class="dropdown-divider">
        </li>

        <li><a class="dropdown-item" href="/ads">Clear Filter</a></li>
    </ul>
</div>

</body>