"use strict"

const boxes = document.querySelectorAll('.box')

window.addEventListener('scroll', checkBoxes)

//we run the function initially to have the boxes already showing when the page is displayed
checkBoxes()

function checkBoxes() {
    const triggerBottom = window.innerHeight / 5 * 4

    boxes.forEach(box => {
        // getBoundingClientRect - returns info about the size of an element and its position relative to the viewport; I am using it to find the top of each box
        const boxTop = box.getBoundingClientRect().top

        if(boxTop < triggerBottom) {
            box.classList.add('show')
        } else {
            box.classList.remove('show')
        }
    })
}

//TODO if you want to get fancy you can use the "ANIMATE ON SCROLL" library