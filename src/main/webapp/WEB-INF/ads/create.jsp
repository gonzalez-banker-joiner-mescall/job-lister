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

<%--            CHOOSE WORKER AMOUNT--%>

<%--            <div>--%>
<%--                <label for="amount">Please Select Your Amount of Workers</label>--%>
<%--                <div id="amount" class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="amount" id="1-2" checked>--%>
<%--                    <label class="form-check-label" for="1-2">--%>
<%--                        1 - 2--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="amount" id="3-5" checked>--%>
<%--                    <label class="form-check-label" for="3-5">--%>
<%--                        3 - 5--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="amount" id="5-10">--%>
<%--                    <label class="form-check-label" for="5-10">--%>
<%--                        5 - 10--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="amount" id="10-25" checked>--%>
<%--                    <label class="form-check-label" for="10-25">--%>
<%--                        10 - 25--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="amount" id="25+" checked>--%>
<%--                    <label class="form-check-label" for="25+">--%>
<%--                        25+--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            CHOOSE CATEGORY--%>
            <label for="categories">Please Select Your Category</label>
            <div>
                <div id="categories" class="form-check">
                    <input value="1" class="form-check-input" type="checkbox" name="category" id="space">
                    <label class="form-check-label" for="space">
                        Space
                    </label>
                </div>
                <div class="form-check">
                    <input value="2" class="form-check-input" type="checkbox" name="category" id="violence">
                    <label class="form-check-label" for="violence">
                        Violence
                    </label>
                </div>
                <div class="form-check">
                    <input value="3" class="form-check-input" type="checkbox" name="category" id="theft">
                    <label class="form-check-label" for="theft">
                        Theft
                    </label>
                </div>
                <div class="form-check">
                    <input value="4" class="form-check-input" type="checkbox" name="category" id="career">
                    <label class="form-check-label" for="career">
                        Career
                    </label>
                </div>
                <div class="form-check">
                    <input value="5" class="form-check-input" type="checkbox" name="category" id="harassment">
                    <label class="form-check-label" for="harassment">
                        Harassment
                    </label>
                </div>
                <div class="form-check">
                    <input value="6" class="form-check-input" type="checkbox" name="category" id="fraud">
                    <label class="form-check-label" for="fraud">
                        Fraud
                    </label>
                </div>
                <div class="form-check">
                    <input value="7" class="form-check-input" type="checkbox" name="category" id="cyber">
                    <label class="form-check-label" for="cyber">
                        Cyber
                    </label>
                </div>
                <div class="form-check">
                    <input value="8" class="form-check-input" type="checkbox" name="category" id="vandalism">
                    <label class="form-check-label" for="vandalism">
                        Vandalism
                    </label>
                </div>
                <div class="form-check">
                    <input value="9" class="form-check-input" type="checkbox" name="category" id="science">

                    <label class="form-check-label" for="science">
                        Science
                    </label>
                </div>
                <div class="form-check">
                    <input value="10" class="form-check-input" type="checkbox" name="category" id="ransom">

                    <label class="form-check-label" for="ransom">
                        Ransom
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
