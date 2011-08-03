document.observe("dom:loaded", function() {
  // Display map on index
  if ((map_canvas = $('map_canvas'))) {
    var mapLatlng = new google.maps.LatLng(44.045, 5.046);
    var mapOptions = {
      zoom: 10, center: mapLatlng, mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map($("map_canvas"), mapOptions);
    new google.maps.Marker({
      position: mapLatlng, map: map, title: "Ferronerie CareyFer"
    });
  }
});