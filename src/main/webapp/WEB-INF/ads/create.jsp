<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <link rel="stylesheet" href="../css/background.css">
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<section class="adCreate mt-5">
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group mb-3">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" required>
            </div>
            <label for="categories">Please Select Your Category:</label>

            <c:if test="${sessionScope.missingCategory}">
                <p class="text-danger">${sessionScope.messageCat}</p>
            </c:if>

            <div id="categories" class="mb-3">
                <div class="form-check">
                    <input value="1" class="form-check-input" type="checkbox" name="category"
                           id="constructionMaintenance">
                    <label class="form-check-label" for="constructionMaintenance">
                        Construction & Maintenance
                    </label>
                </div>
                <div class="form-check">
                    <input value="2" class="form-check-input" type="checkbox" name="category" id="researchDev">
                    <label class="form-check-label" for="researchDev">
                        Research & Development
                    </label>
                </div>
                <div class="form-check">
                    <input value="3" class="form-check-input" type="checkbox" name="category" id="ops">
                    <label class="form-check-label" for="ops">
                        Operation & Logistics
                    </label>
                </div>
                <div class="form-check">
                    <input value="4" class="form-check-input" type="checkbox" name="category" id="combat">
                    <label class="form-check-label" for="combat">
                        Combat & Defense
                    </label>
                </div>
                <div class="form-check">
                    <input value="5" class="form-check-input" type="checkbox" name="category" id="miscellaneous">
                    <label class="form-check-label" for="miscellaneous">
                        Miscellaneous
                    </label>
                </div>
            </div>

            <div class="form-group mb-3">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" rows="4"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
        <button class="btn btn-primary" onclick="history.back()">Go Back</button>
    </div>
</section>
</body>
</html>