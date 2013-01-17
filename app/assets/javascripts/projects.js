$(function() {
  $('ul.nav a').bind('click',function(event){
    var $anchor = $(this);

    $('html, body').stop().animate({
      scrollTop: $($anchor.attr('href')).offset().top
    }, 700,'easeInOutExpo');
     event.preventDefault();
  });
});

$(function() {
  $('.boxgrid.captionfull').hover(function(){
    $(".cover", this).stop().animate({top:'80px'},{queue:false,duration:160});
  }, function() {
    $(".cover", this).stop().animate({top:'175px'},{queue:false,duration:160});
  });
});
