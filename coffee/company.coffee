$('document').ready ->
  #random background
  backgrounId = Math.floor((Math.random()*4)+1)
  $('#company').css('background-image','url(img/main/bg-photo' + backgrounId + '.jpg)')
  
  #paralax
  $('#company').parallax("50%", 0.7, false);
  
  #viking
  animateViking = -> $('#viking').animate(
    {top: ['-=215', 'swing']}
    1000
    -> 
     $('#viking').css('z-index','2')
  )
  
  $('#viking').css('z-index','0')
  if document.documentElement.clientWidth > 600
    $('#viking').css('top','350px')
  else
    $('#viking').css('top','448px')
    
  if document.documentElement.clientWidth > 600
    #timeout animation on PC
    setTimeout( 
      ->
        animateViking()
      700)
  else
    #trigger animation on waypoint on mobile
    isVikingAnimated = false
    $('#about').waypoint(
      ->
        if (!isVikingAnimated)
          isVikingAnimated = true 
          animateViking()
      offset: 500)