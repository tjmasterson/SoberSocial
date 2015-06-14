// $(document).ready(function(){

//   $("#search_button").on("click", function(e){
//     e.preventDefault();

//     var mapCanvas = $("#map-canvas");
//     var locations = mapCanvas.data("locations");
//     var eventCard = '<div class="jumbotron2">' +
//                       '<h1>' +locations.length+ '</h1>' +
//                       '<h2>' +locations[0][2]+ '</h2>' +
//                       '<h3>' +locations[0][6]+ '</h3>' +
//                       '<h4> Guests. <span>' +locations[0][5]+ '/' +locations[0][4]+ '</span></h4><hr>' +
//                       '<p>' +locations[0][3]+ '</p>' +
//                       '<p><a class="btn btn-primary btn-lg" href="#" role="button">Join Event</a></p>' +
//                     '</div>'
//     $.ajax({
//         url: "/",
//         success: function(){
//           $("#list-canvas").html(eventCard);
//       }
//     });
//   });
// });