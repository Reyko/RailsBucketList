var map;

$(document).ready(function() {

  var options = {
    zoom:8,
    zoomControl: false,
    center: new google.maps.LatLng(51.508515,-0.1254872)
  };


  map = new google.maps.Map($('#map-canvas')[0],options);

});



function addMarker(lat,lng) {
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(51.5184244, -0.0888685999999999),
    map:map

  });

  return "cool_beans";

}




