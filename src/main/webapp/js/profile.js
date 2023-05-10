

var editProfile = document.querySelector('#edit-Bio-btn');

editProfile.addEventListener('click', function() {


    var bioText = document.querySelector('#bio');

    var newBio = prompt("Update your Bio:");

    if (newBio !== null) {
        bioText.textContent = newBio;
    }

});


