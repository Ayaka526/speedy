
$(document).ready(function(){
    $("#theTarget").skippr({
        transition: 'slide',
        speed: 3000,
        easing: 'easeOutQuart',
        navType: 'block',
        childrenElementType: 'div',
        arrows: true,
        autoPlay: true,
        autoPlayDuration: 2000,
        keyboardOnAlways: true,
        hidePrevious: false
    });
});