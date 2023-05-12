<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>
    <link rel="stylesheet" href="./css/landingpage.css">
    <link rel="stylesheet" href="../css/background.css">
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

<div>
    <h2>About</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
        magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
        laborum.</p>
    <div class="about-img-container">
    <img class="minion-pc about-img" src="assets/img/minion-movie.png">
    <img class="minion-banana about-img" src="assets/img/thomas-minion1.png">
    </div>
</div>
<div>
    <h2>Employer</h2>
    <p>Felonius Gru, born in 1965 (Month and Day are classified), is the son of Marlena Gru and Robert Gru. He is a
        supervillain and has three adopted daughters Margo, Edith, and Agnes. Gru is also the leader of the
        Minions(that's us). With his brain and our numbers we plan to complete all jobs posted and aid him in world
        domination. BANANAS! BANANAS! BANANAS!</p>
    <img class="gru-coffee" src="./assets/img/coffee-gru.png">
</div>
<script src="./js/landingpage.js"></script>
</body>
</html>
