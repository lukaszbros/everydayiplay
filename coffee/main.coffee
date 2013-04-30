$('document').ready ->
  #random background
  backgrounId = Math.floor((Math.random()*4)+1)
  $('#company').css('background-image','url(img/main/bg-photo' + backgrounId + '.jpg)')
  
  #menu
  $('#logo_header').click (event) ->
    event.preventDefault()
    $('html,body').animate 
      scrollTop: 0
  $('#menu_about').click (event) ->
    event.preventDefault()
    if document.documentElement.clientWidth > 600
      $('html,body').animate 
        scrollTop: 465
    else
      $('html,body').animate 
        scrollTop: 555
  $('#menu_games').click (event) ->
    event.preventDefault()
    $('html,body').animate 
      scrollTop: 1430
  $('#menu_contact').click (event) ->
    event.preventDefault()
    $('html,body').animate 
      scrollTop: 2180