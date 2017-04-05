$(document).ready(function() {
  var div_active = "div#" + $(".active").attr('id');
  $("div.tab-content").hide();
  $(div_active).show();
  $(".tab").click(function(event) {
    $(".tab").removeClass("active");
    $(this).addClass("active");
    var div_active = "div#" + $(".active").attr('id');
    $("div.tab-content").hide();
    $(div_active).show();
  });
});

