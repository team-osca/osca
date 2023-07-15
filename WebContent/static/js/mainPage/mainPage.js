var startPos = 3;
var pos = 9;
var endPos = 15;
// number of slides
var totalSlides = $('#slider-wrap ul li').length;
// get the slide width
var sliderWidth = $('#slider-wrap').width();
var slideCount = 0;

$(document).ready(function () {
    // set width to be 'x' times the number of slides
    $('#slider-wrap ul#slider').width(sliderWidth * totalSlides);
    $('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));  
    $('.topBanner-nextArrow').on('click', slideRight);
    $('.topBanner-prevArrow').on('click', slideLeft);

    let autoSlider = setInterval(slideRight, 3000);

    $('#slider-wrap').hover(
        function () {
            clearInterval(autoSlider);
        },
        function () {
            autoSlider = setInterval(slideRight, 3000);
        }
     );
});

function slideRight() {
    pos++;
    $('#slider-wrap ul#slider').animate(
        {
            left: -(sliderWidth * pos),
        },
        500
    );
    console.log(pos); 
    if (pos == endPos) {
        pos = 9;
        setTimeout(()=> initialize(), 500);
    } 
}
function slideLeft() {
    pos--;
    $('#slider-wrap ul#slider').animate(
        {
            left: -(sliderWidth * pos),
        },
        500
    );
    console.log(pos); 
    if (pos == startPos) {
        pos = 9;
        setTimeout(()=> initialize(), 500);
    } 
}
function initialize(){
    $('#slider-wrap ul#slider').finish();
    $('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));
}

