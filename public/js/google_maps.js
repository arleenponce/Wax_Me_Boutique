$(document).ready(function(){
    var coordinates = new google.maps.LatLng(32.844319, -117.272645);
    var center = new google.maps.LatLng(32.846055, -117.275027);
    var mapOptions = {
      center: center,
      scrollwheel: true,
      zoom:16,
      mapTypeId:google.maps.MapTypeId.ROADMAP
    };
    var mapContainer = $("#googleMap")[0];
    var map = new google.maps.Map(mapContainer, mapOptions);
    var marker = new google.maps.Marker({
    map: map,
    position: coordinates,
    animation: google.maps.Animation.BOUNCE,
    title: 'Wax Me Boutique!',
    });

    function initMap() {
    var waxmebotique = {lat: 32.844319, lng: -117.272645};
    var home = {lat: 32.793928, lng: -117.247630};

    var map = new google.maps.Map(document.getElementById('googleMap'), {
      center: waxmebotique,
      scrollwheel: false,
      zoom: 7
    });

    var directionsDisplay = new google.maps.DirectionsRenderer({
      map: map
    });

    // Set destination, origin and travel mode.
    var request = {
      destination: waxmebotique,
      origin: home,
      travelMode: google.maps.TravelMode.DRIVING
    };

    // Pass the directions request to the directions service.
    var directionsService = new google.maps.DirectionsService();
    directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        // Display the route on the map.
        directionsDisplay.setDirections(response);
      }
    });
  }
});