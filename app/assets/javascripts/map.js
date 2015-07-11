$(document).ready(function() {

    function initialize() {
        var mapCanvas = $("#map-canvas");
        var latitude = mapCanvas.data("latitude");
        var longitude = mapCanvas.data("longitude");
        var locations = mapCanvas.data("locations");

        buildMap(latitude, longitude, locations);
    } //init

    function buildMap(latitude, longitude, locations) {
        var myLatlng = new google.maps.LatLng(latitude, longitude);
        var mapOptions = {
            zoom: 15,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            mapTypeControl: false
        }

        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        var marker = new google.maps.InfoWindow({
            position: myLatlng,
            map: map,
            content: "You're here!"
        });

        var infowindow = new google.maps.InfoWindow();
        for (var i = 0; i < locations.length; i++) {
            var position = new google.maps.LatLng(locations[i]["lat"], locations[i]["lng"]);
            var marker = new google.maps.Marker({
                position: position,
                map: map
            });

            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    var start = locations[i]["start_time"];
                    var end = locations[i]["end_time"];

                    console.log(locations[i]["start_time"]);
                    infowindow.setContent('<div class="jumbotron">' +
                        '<h4>' + locations[i]["title"] + ' --> <span>' +locations[i]["date"]+ '</span></h4>' +
                        '<h5>' + locations[i]["address"] + '</h5>' +
                        '<h6> Start Time: <span>' +start["hour"]+ ':' +start["minute"]+ ':' +start["second"]+ '</span><h6>' +
                        // '<h6> End Time: <span>' +end["hour"]+ ':' +end["minute"]+ ':' +start["second"]+ '</span><h6>' +
                        '<h6> Guests: <span>' + locations[i]["num_people_attending"] + '/' + locations[i]["max_people"] + '</span></h6><hr>' +
                        '<h6>' + locations[i]["description"] + '</h6>' +
                        '<h6><a class="btn btn-primary btn-sm" href="#" role="button">Join Event</a></h6>' +
                        '</div>');
                    infowindow.open(map, marker);
                }
            })(marker, i));
        }
    } //buildMap

    google.maps.event.addDomListener(window, 'load', initialize);

}) //$doc.ready