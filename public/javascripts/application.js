MapCanvas = function() {
  if ((map_canvas = $("#map_canvas"))) {
    var mapLatlng = new google.maps.LatLng(44.045, 5.046);
    var mapOptions = { zoom: 10, center: mapLatlng, mapTypeId: google.maps.MapTypeId.ROADMAP };
    var map = new google.maps.Map($("#map_canvas")[0], mapOptions);
    new google.maps.Marker({ position: mapLatlng, map: map, title: "Ferronerie CareyFer" });
  }
};

Carousel = function() {
  $("#pictures").carouFredSel({scroll: { duration: 1000 }});
  $("#pictures a").fancybox({
    cyclic: true,
    onStart: function() { $("#pictures").trigger("pause"); },
    onClosed: function() { $("#pictures").trigger("play"); }
  });
};

$(document).ready(function() {
  new MapCanvas();
  new Carousel();
});