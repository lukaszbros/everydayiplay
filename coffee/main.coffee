$('document').ready ->
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