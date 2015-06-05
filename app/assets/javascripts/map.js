// $(document).ready(function(){

//   function initialize(){
//     var mapCanvas = $("#map-canvas");
//     var address = mapCanvas.data("address");
//     var geocoder = new google.maps.Geocoder();

//     geocoder.geocode({"address": address}, function(results, status){
//       var latitude = results[0].geometry.location.A;
//       var longitude = results[0].geometry.location.F;
//       buildMap(latitude, longitude);
//     })//end geocode
//   }//end init

//   function buildMap(latitude, longitude){
//     var myLatlng = new google.maps.LatLng(latitude, longitude);
//     var mapOptions = {
//       zoom: 10,
//       center: myLatlng,
//       mapTypeId: google.maps.MapTypeId.ROADMAP,
//       mapTypeControl: false
//     }
//     var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
//     var marker = new google.maps.InfoWindow({
//       position: myLatlng,
//       map: map,
//       content: "My childhood home!"
//     });
//   }//end buildMap
//   google.maps.event.addDomListener(window, 'load', initialize);
// })//end $doc.ready

$(document).ready(function(){

  function initialize(){
    var mapCanvas = $("#map-canvas");
    // var address = mapCanvas.data("address");
    var latitude = mapCanvas.data("latitude");
    var longitude = mapCanvas.data("longitude");
    console.log(latitude);
    console.log(longitude);
    var geocoder = new google.maps.Geocoder();
    var locations = mapCanvas.data("locations")
    console.log(locations[0][0]);
    // geocoder.geocode({"address": address}, function(results, status){
    //   var latitude = results[0].geometry.location.A;
    //   var longitude = results[0].geometry.location.F;
    //   buildMap(latitude, longitude);
    // })//end geocode event

    // geocoder.geocode({"ip": ip}, function(results, status){
    //   var latitude = results[0].geometry.location.A;
    //   var longitude = results[0].geometry.location.F;
      buildMap(latitude, longitude, locations);
    // })//end geocode user

  }//end init

  function buildMap(latitude, longitude, locations){
    var myLatlng = new google.maps.LatLng(latitude, longitude);
    var mapOptions = {
      zoom: 10,
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
      console.log(position);
      marker = new google.maps.Marker({
        position: position,
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        console.log("hello");
        return function() {
          infowindow.setContent("LINK GOES HERE?");
          infowindow.open(map, marker);
        }
      })(marker, i));
    }

  }//end buildMap
  google.maps.event.addDomListener(window, 'load', initialize);
})//end $doc.ready