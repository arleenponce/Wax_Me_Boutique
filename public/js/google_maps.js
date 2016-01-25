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
  }
});