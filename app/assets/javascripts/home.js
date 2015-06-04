$(document).ready(function(){

  var mapCanvas = $("#map-canvas");
  var address = mapCanvas.data("address");
  var geocoder = new google.maps.Geocoder();

  geocoder.geocode({"address": address}, function(results, status){
    var latitude = results[0].geometry.location.A;
    var longitude = results[0].geometry.location.F;
    initialize(latitude, longitude);
  })//end geocode

  function initialize(latitude, longitude){

    var myLatlng = new google.maps.LatLng(latitude, longitude);
    var mapOptions = {
      zoom: 8,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      mapTypeControl: false
    }
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    var marker = new google.maps.InfoWindow({
      position: myLatlng,
      map: map,
      content: "Yayayaya!"
    });

  }//end init
  google.maps.event.addDomListener(window, 'load', initialize);
})//end $doc.ready




// $(document).ready(function() {

//   function initialize() {;
//     var mapCanvas = $("#map-canvas");

//     var myLatlng = new google.maps.LatLng(30,70);
//     var mapOptions = {
//       zoom: 4,
//       center: myLatlng
//     }

//     var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

//     var marker = new google.maps.InfoWindow({
//         position: myLatlng,
//         map: map,
//         content: 'Yayayayaya!'
//     });
//   }
//   google.maps.event.addDomListener(window, 'load', initialize);
// })
