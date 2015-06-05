$(document).ready(function(){

  function initialize(){
    var mapCanvas = $("#map-canvas");
    var latitude = mapCanvas.data("latitude");
    var longitude = mapCanvas.data("longitude");
    var geocoder = new google.maps.Geocoder();
    var locations = mapCanvas.data("locations")

    buildMap(latitude, longitude, locations);
  }//init

  function buildMap(latitude, longitude, locations){
    var myLatlng = new google.maps.LatLng(latitude, longitude);
    var mapOptions = {
      zoom: 11,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      mapTypeControl: false
    }
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    var marker = new google.maps.InfoWindow({
      position: myLatlng,
      map: map,
      content: "USER(hardcoded for development)"
    });

    var infowindow = new google.maps.InfoWindow();
    var i, marker;
    for (i = 0; i < locations.length; i++) {
      var position = new google.maps.LatLng(locations[i][0], locations[i][1]);
      marker = new google.maps.Marker({
        position: position,
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][2]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }

  }//buildMap
  google.maps.event.addDomListener(window, 'load', initialize);
})//$doc.ready