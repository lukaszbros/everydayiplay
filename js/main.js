// Generated by CoffeeScript 1.4.0
(function() {

  $('document').ready(function() {
    $('#logo_header').click(function(event) {
      event.preventDefault();
      return $('html,body').animate({
        scrollTop: 0
      });
    });
    $('#menu_about').click(function(event) {
      event.preventDefault();
      if (document.documentElement.clientWidth > 600) {
        return $('html,body').animate({
          scrollTop: 465
        });
      } else {
        return $('html,body').animate({
          scrollTop: 555
        });
      }
    });
    $('#menu_games').click(function(event) {
      event.preventDefault();
      return $('html,body').animate({
        scrollTop: 1430
      });
    });
    return $('#menu_contact').click(function(event) {
      event.preventDefault();
      return $('html,body').animate({
        scrollTop: 2180
      });
    });
  });

}).call(this);
