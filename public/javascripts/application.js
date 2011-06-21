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

  // Projects slideshow

});

var image_slide = new Array('project1', 'project2', 'project3');
var i = 0;

function SwapImage(x,y) {
  $(image_slide[x]).appear({ duration: 1.4 });
  $(image_slide[y]).fade({ duration: 0 });
}

function GoNext() {
  var imageShow = i+1,
      imageHide = i;

  if (imageShow == image_slide.length) {
    SwapImage(0,imageHide);
    i = 0;
  } else {
    SwapImage(imageShow,imageHide);
    i++;
  }
}

function GoPrevious() {
  var imageShow = i-1,
      imageHide = i;

  if (i == 0) {
    SwapImage(NumOfImages-1,imageHide);
    i = NumOfImages-1;

  } else {
    SwapImage(imageShow,imageHide);
    i--;
  }
}