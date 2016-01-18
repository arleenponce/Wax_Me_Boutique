$(document).ready(function() {

  var domElement = $("#service_title");
  var domElement2 = $("#service_price");
  var domElement3 = $("#service_time");
  var domElement4 = $("#service_details");

  var timer = setInterval(specials, 3000);

  $.ajax({
    dataType: 'json',
    url: '/services/show_specials',
    success: function(data){
      domElement.html(data.service_name);
      domElement2.html("$" + data.cost);
      domElement3.html(data.time + " min");
      domElement4.html(data.description);
    },
    error: function() {
      domElement.html("No response. The server may be down.")
    }
  })

  // function rotate_specials(specials) {
  //   var carouselInner = document.createElement('div')
  //   carouselInner.className = 'carousel-inner'
  //   carousel.setAttr('role', 'listbox')

  //   var len = specials.length
  //   for(i=0; i<len; i++){
  //     var special = specials[i]

  //     var slideItem = 
  //     '<div class="item">' +
  //       '<h4 id="service_title" remote="true">' + special.title + '</h4>' +
  //       '<h5 id="service_price" $' + special.cost + '</h5>' +
  //       '<h5 id="service_time">' + special.time + ' min</h5>' +
  //       '<h5 id="service_details">' + special.description + '</h5>' +
  //     '</div>'
  //     carouselInner.appendChild(slideItem)
  //   }
  //   console.log(carouselInner)
  //   var specialsCarousel = document.getElementById('specials_carousel')
  //   specialsCarousel.appendChild(carouselInner)
    
  // }

  function specials() {
    $.ajax({
      dataType: 'json',
      url: '/services/show_specials',
      success: function(data){
      domElement.html(data.service_name);
      domElement2.html("$" + data.cost);
      domElement3.html(data.time + " min");
      domElement4.html(data.description);
      },
      error: function() {
        domElement2.html("Function is not functioning")
      }
    })
  }
})