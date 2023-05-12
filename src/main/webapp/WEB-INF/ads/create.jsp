<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>

<%--            CHOOSE CATEGORY--%>
            <label for="categories">Please Select Your Category</label>
            <div  id="categories">
                <div class="form-check">
                    <input value="1" class="form-check" type="checkbox" name="category" id="constructionMaintenance">
                    <label class="form-check-label" for="constructionMaintenance">
                        Construction & Maintenance
                    </label>
                </div>
                <div class="form-check">
                    <input value="2" class="form-check" type="checkbox" name="category" id="researchDev">
                    <label class="form-check-label" for="researchDev">
                        Research & Development
                    </label>
                </div>
                <div class="form-check">
                    <input value="3" class="form-check" type="checkbox" name="category" id="ops">
                    <label class="form-check-label" for="ops">
                        Operation & Logistics
                    </label>
                </div>
                <div class="form-check">
                    <input value="4" class="form-check" type="checkbox" name="category" id="combat">
                    <label class="form-check-label" for="combat">
                        Combat & Defense
                    </label>
                </div>
                <div class="form-check">
                    <input value="5" class="form-check" type="checkbox" name="category" id="miscellaneous">
                    <label class="form-check-label" for="miscellaneous">
                        Miscellaneous
                    </label>
                </div>

            </div>

<%--CHOOSE DESCRIPTION--%>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
