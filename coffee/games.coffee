$('document').ready ->
  #paralax
  if document.documentElement.clientWidth > 1070
    $('#games').parallax("50%", -0.3, true, 0);
  
  slideId=1
  setInterval(
    ->
      $('#slideshow').fadeOut ->
        slideId += 1
        slideId = 1 if slideId > 3 
        if document.documentElement.clientWidth < 600
          $('#slideshow').css('background-image','url(img/main_mobile/slide' + slideId + '.png)') 
        else if document.documentElement.clientWidth < 1070
          $('#slideshow').css('background-image','url(img/main_tablet/slide' + slideId + '.png)') 
        else
          $('#slideshow').css('background-image','url(img/main/slide' + slideId + '.png)')       
        $('#slideshow').fadeIn()
    5000)
  
