//Slider//
function bannerSwitcher() {
    next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
    if (next.length) next.prop('checked', true);
    else $('.sec-1-input').first().prop('checked', true);
  }

  var bannerTimer = setInterval(bannerSwitcher, 9000);

  $('nav .controls label').click(function() {
    clearInterval(bannerTimer);
    bannerTimer = setInterval(bannerSwitcher, 5000)
  });

  //Header//
 $(function() {
    $(window).on("scroll", function() {
        if($(window).scrollTop() > 60) {
            $(".menu").addClass("active");
        } else {
           $(".menu").removeClass("active");
        }
    });
});
$(document).ready(function(){ 
  // funcion para cambiar los tours cuando la clase se encuentre activa
$('#carouselExampleIndicators').on('slid.bs.carousel', function(e) {
  if($('li.carouselItem').hasClass('active')) {
    var liActive = $(e.relatedTarget).attr("index");
    // console.log();
    $(".cont-sitios").html(`
    raaaaaaaaaaa
    `);

  }
})

})
