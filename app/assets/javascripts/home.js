$(document).ready(function() {

  function initialize() {

    var mapCanvas = $("#map-canvas");
    var lat = mapCanvas.data("latitude");
    var lng = mapCanvas.data("longitude");

    var myLatlng = new google.maps.LatLng(lat,lng);
    var mapOptions = {
      zoom: 4,
      center: myLatlng
    }

    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'Hello World!'
    });
  }


  google.maps.event.addDomListener(window, 'load', initialize);

})
