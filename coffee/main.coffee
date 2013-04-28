$('document').ready ->
  $('#logo_header').click (event) ->
    event.preventDefault()
    $('html,body').animate 
      scrollTop: 0
  $('#menu_about').click (event) ->
    event.preventDefault()
    $('html,body').animate 
      scrollTop: 680
  $('#menu_games').click (event) ->
    event.preventDefault()
    $('html,body').animate 
      scrollTop: 1430
  $('#menu_contact').click (event) ->
    event.preventDefault()
    $('html,body').animate 
      scrollTop: 2180