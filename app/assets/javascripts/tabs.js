$(document).ready(function() {
  if (window.location.hash != "") {
    var anchor = window.location.hash;
    var div_active = "div" + anchor
    $("div.tab-content").hide();
    $(div_active).show();
    $(".tab").removeClass("active");
    $(anchor).addClass("active");
  } else {
    var div_active = "div#" + $(".active").attr('id');
    $("div.tab-content").hide();
    $(div_active).show();
  };
  $(".tab").click(function(event) {
  $(".tab").removeClass("active");
  $(this).addClass("active");
  var div_active = "div#" + $(".active").attr('id');
  $("div.tab-content").hide();
  $(div_active).show();
  });
});

