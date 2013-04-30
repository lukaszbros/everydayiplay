$('document').ready ->
  animationTime = 1000
  animationDelay = 500
  
  resetStickers = ->
    $('#stay_small_sticker').animate(
      {opacity:0}
      -> $('#stay_small_sticker').css('position','relative').css('left','-100px').css('top','100px'))
    $('#independent_sticker').animate(
      {opacity:0}
      -> $('#independent_sticker').css('position','relative').css('top','150px'))
    $('#top_talent_sticker').animate(
      {opacity:0}
      -> $('#top_talent_sticker').css('position','relative').css('right','-100px').css('top','100px'))
        
  animateStaySmall = ->
    $('#stay_small_sticker').animate(
      {top: ['-=100', 'swing'], left: ['+=100', 'swing'], opacity: 1}
      animationTime
    )
    
  animateIndependent = ->
    $('#independent_sticker').animate(
      {top: ['-=150', 'swing'], opacity: 1}
      animationTime
    )
    
  animateTopTalent = ->
    $('#top_talent_sticker').animate(
      {top: ['-=100', 'swing'], right: ['+=100', 'swing'], opacity: 1}
      animationTime
    )
  
  animateStickers = ->
    resetStickers()
    animateStaySmall()
    setTimeout(
      ->
        animateIndependent()
      animationDelay)
    setTimeout(
      ->
        animateTopTalent()
      animationDelay*2)  
    
  if document.documentElement.clientWidth > 600
    resetStickers()
    $('#about').waypoint(
      (direction)->
        if (direction =='down')
          animateStickers()
      offset: 500)
  
