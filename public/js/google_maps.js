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
    var waxmeboutique = {lat: 32.846055, lng: -117.275027};
    var home = {lat: 32.793928, lng: -117.247630};

    var map = new google.maps.Map(document.getElementById('googleMap'), {
      center: waxmeboutique,
      scrollwheel: false,
      zoom: 7
    });
  }

  // on click run this code
  $('#toggle_map').on('click', function(){
    $('#map').modal('toggle');
    

    $('#map').on('shown.bs.modal', function(){
      google.maps.event.trigger(map, "resize");
      map.setCenter(new google.maps.LatLng(32.846055, -117.275027));
    });
  })
});