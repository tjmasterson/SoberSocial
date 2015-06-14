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
            var position = new google.maps.LatLng(locations[i][0], locations[i][1]);
            var marker = new google.maps.Marker({
                position: position,
                map: map
            });

            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    infowindow.setContent('<div class="jumbotron">' +
                        '<h2>' + locations[i][2] + '</h2>' +
                        '<h3>' + locations[i][6] + '</h3>' +
                        '<h4> Guests. <span>' + locations[i][5] + '/' + locations[i][4] + '</span></h4><hr>' +
                        '<p>' + locations[i][3] + '</p>' +
                        '<p><a class="btn btn-primary btn-lg" href="#" role="button">Join Event</a></p>' +
                        '</div>');
                    infowindow.open(map, marker);
                }
            })(marker, i));
        }
    } //buildMap

    google.maps.event.addDomListener(window, 'load', initialize);

}) //$doc.ready