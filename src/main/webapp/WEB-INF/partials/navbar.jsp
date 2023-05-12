<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <div class="navbar-nav">
            <a class="nav-link" href="/">Home</a>
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <a class="nav-link" href="/login">Login</a></li>
                    <a class="nav-link" href="/register">Register</a></li>
                </c:when>
                <c:otherwise>
                    <a class="nav-link" href="/profile">Profile</a></li>
                    <a class="nav-link" href="/logout">Logout</a></li>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>
