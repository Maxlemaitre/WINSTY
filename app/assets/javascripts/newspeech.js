$(document).ready(function() {
  $(".start-speech").click(function(event) {
    $(".introduction-form").slideUp(700);
    $(".first-form").removeClass("hide");
  });
  $(".first-form").delay(4000).slideUp(700);

  setTimeout(function() {
       $(".second-form").removeClass("hide");
   }, 4000);
});

