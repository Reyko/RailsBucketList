var map;
var marker;

var cool_beans = function() {
  
  var destinations = document.getElementsByClassName("map-canvas");

  _(destinations).each(function(destination){
    
    console.log(destination.id);
  
    var latitude = $("#" + destination.id).data("latitude");
    var longitude = $("#" + destination.id).data("longitude");

    var options = {
    zoom:8,
    zoomControl: false,
    center: new google.maps.LatLng(latitude,longitude)
    };

    map = new google.maps.Map($("#"+destination.id)[0],options);
    var toDoItems = document.getElementsByClassName("to-do-item");

   _(toDoItems).each(function(toDoItem){

      if(document.getElementById("toDoLat " + toDoItem.id) != null && document.getElementById("toDoLong " + toDoItem.id) != null){

        var toDoLat = document.getElementById("toDoLat " + toDoItem.id).innerHTML;
        var toDoLong = document.getElementById("toDoLong " + toDoItem.id).innerHTML;
        addMarker(toDoLat,toDoLong);
        
      }
    });    
  });
}


$(document).ready(cool_beans);

$(function() {
    $("#button").click(function() {
        setTimeout(cool_beans, 1000);
    });
});

function addMarker(lat,lng) {
  marker = new google.maps.Marker({
    // position: new google.maps.LatLng(51.5184244, -0.0888685999999999),
    position: new google.maps.LatLng(lat, lng),
    map:map

  });
  return "cool_beans";
}




