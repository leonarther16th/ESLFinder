  $(document).ready(function() {
      $(".book-now").toggleClass("hider");

      $(".seat-well").hover(function() {
          $(this).addClass("focus");

          $(this).find(".book-now").toggleClass("hider");



      }, function() {
          $(this).removeClass("focus");
          $(this).find(".book-now").toggleClass("hider");

      });

      $('.seat-well').tooltip();


  });