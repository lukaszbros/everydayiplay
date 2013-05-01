$('document').ready ->
  rotation = 3;
  swingtime = 700;
 
  init = -> 
    $('#get_in_touch_pivot').stop().animate {rotate: rotation}, 0, ->
      $('#get_in_touch_pivot').css("display", "block")
      pendulumswing()
 
  pendulumswing = -> 
    $('#get_in_touch_pivot').animate {rotate: rotation},swingtime, "swing", ->
      if rotation == 0
        return
      if rotation > 0 
        rotation -= 0.5
      else
        rotation += 0.5
      rotation *= -1;
      pendulumswing();
                
  #waypoints
  $('#contact').waypoint(
    (direction)->
      if (direction == 'down')
        rotation = 3;
        swingtime = 700;
        init()      
    offset: 500)
    