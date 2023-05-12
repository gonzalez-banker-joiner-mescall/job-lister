window.onscroll = function() {
    var image = document.getElementById("car-image");
    var scrollPosition = window.pageYOffset;

    image.style.left = 100 - scrollPosition * 4.1 + "%";
}



const target = document.getElementById('car-image');

const observer = new MutationObserver((mutationsList) => {
    for (let transform of mutationsList) {
        if (transform.type === 'attributes' && transform.attributeName === 'style') {
            const style = target.getAttribute('style');
            if (style.includes('left:') && parseFloat(style.split('left:')[1]) < 42.6) {
                // Do something here
                document.getElementById("minion-bubble").textContent = "I am Minion #24601 Well it can get crazy around here. If you are a minion accept and job and if you are an admin create them. Sign up or log in.";
            } else {
                document.getElementById("minion-bubble").textContent = "Hello Minions this is a site fore you to accept jobs from your supreme leader, Gru and senior level minions.";
            }
        }
    }
});

const config = { attributes: true };


observer.observe(target, config);

