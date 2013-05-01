$('document').ready ->
  #paralax
  $('#games').parallax("50%", 0.2, false);
  
  slideId=1
  setInterval(
    ->
      $('#slideshow').fadeOut ->
        slideId += 1
        slideId = 1 if slideId > 3 
        $('#slideshow').css('background-image','url(img/main/slide' + slideId + '.png)')       
        $('#slideshow').fadeIn()
    5000)
  
