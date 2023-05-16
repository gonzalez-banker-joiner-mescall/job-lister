window.onscroll = function() {
    var image = document.getElementById("car-image");
    var scrollPosition = window.pageYOffset;

    image.style.left = 100 - scrollPosition * .5 + "%";
}




const minionHide = document.getElementById('visibility');
const minionHides = document.getElementById('visibilityMinion');
const textHide = document.getElementById('minion-bubbles');
const showMinion = document.getElementById('minionShows');

minionHide.addEventListener('click', minionGone)
showMinion.addEventListener('click', minionReturn)
function minionGone() {
    minionHide.setAttribute('hidden', '');
    minionHides.setAttribute('hidden', '');
    textHide.setAttribute('hidden', '');
    showMinion.removeAttribute('hidden');
}
function minionReturn() {
    showMinion.setAttribute('hidden', '');
    minionHide.removeAttribute('hidden');
    minionHides.removeAttribute('hidden');
    textHide.removeAttribute('hidden');
}


const target = document.getElementById('car-image');

const observer = new MutationObserver((mutationsList) => {
    for (let transform of mutationsList) {
        if (transform.type === 'attributes' && transform.attributeName === 'style') {
            const style = target.getAttribute('style');
            if (style.includes('left:') && parseFloat(style.split('left:')[1]) < 50) {
                // Do something here
                document.getElementById("minion-bubbles").innerHTML = `Well it can get crazy around here. If you are a minion you can accept jobs and if you are an admin you can create them. <span><a href='/register'>Sign up</a></span> or <span><a href='/login'>Login</a></span>.`;
            } else {
                document.getElementById("minion-bubbles").innerHTML = `Hello I am Minion #24601 I am your AI minion helper. This site is for minions to accept jobs from your supreme leader, Gru and senior level minions.`;
            }
        }
    }
});

const config = { attributes: true };


observer.observe(target, config);




