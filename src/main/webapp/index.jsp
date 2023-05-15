<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
    <link rel="stylesheet" href="./css/landingpage.css">
    <link rel="stylesheet" href="./css/background.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="large-container">
    <div class="container">
        <h1>Welcome to Minion Adlister!</h1>
    </div>
    <p class="quote"><em>"Life Is Just Like That Sometimes. We're Hoping For A Unicorn, And We Get A Goat" - Felonius
        Gru</em></p>
</div>
<div class="minion-text">
    <img class="minion-message" src="./assets/img/minon-messageimg.png">
    <p id="minion-bubbles">Hello I am Minion #24601 I am your AI minion helper. This site is for minions to accept jobs
        from your supreme leader, Gru and senior level minions.</p>
</div>
<div class="overflow-me">
    <img id="car-image" class="minion-car" src="./assets/img/minion-car-p.png">
</div>
<div class="container-bottom" style="margin: 0 15em">
    <hr>
    <div>
        <h2>About</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
            magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
            commodo
            consequat. Duis auto irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
            pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
            est
            laborum.</p>
        <div class="about-img-container">
            <img class="minion-pc about-img" src="assets/img/minion-movie.png">
            <img class="minion-banana about-img" src="assets/img/thomas-minion1.png" style="margin-left: 10em">
        </div>
    </div>
    <hr>
    <div>
        <h2>Employer</h2>
        <p>Felonius Gru, born in 1965 (Month and Day are classified), is the son of Marlena Gru and Robert Gru. He is a
            supervillain and has three adopted daughters Margo, Edith, and Agnes. Gru is also the leader of the
            Minions(that's us). With his brain and our numbers we plan to complete all jobs posted and aid him in world
            domination. BANANAS! BANANAS! BANANAS!</p>
        <img class="gru-coffee" src="./assets/img/coffee-gru.png">
    </div>


    <hr class="foot-line">
</div>
<footer class="bg-dark text-center">
    <div class="p-4">
                <div class="row d-flex justify-content-center">
                    <div class="col-auto">
                        <p class="pt-2">
                            <strong>Subscribe for additional Job Postings</strong>
                        </p>
                    </div>
                    <div class="col-md-5 col-12">
                        <!-- Email input -->
                        <div class="form-outline form-white mb-4">
                            <input type="email" id="form5Example21" class="form-control"/>
                            <label class="form-label" for="form5Example21">Email address</label>
                        </div>
                    </div>
                    <div class="col-auto">
                        <button type="submit" class="btn btn-outline-light mb-4">
                            Subscribe
                        </button>
                    </div>
                </div>
        <section class="mb-4">
            <p>
                With subscribing you can get emailed jobs from our leader and admins!
            </p>
        </section>
    </div>

    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        <a class="text-white">Minion Adlister</a>
    </div>
</footer>
<script src="./js/landingpage.js"></script>
</body>
</html>
