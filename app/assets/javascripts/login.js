# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(window).resize(function(){

  $('.centerDIV').css({
    position:'absolute',
    left: ($(window).width() - $('.centerDIV').outerWidth())/2,
    top: ($(window).height() - $('.centerDIV').outerHeight())/2
  });

});

// To initially run the function:
$(window).resize();
