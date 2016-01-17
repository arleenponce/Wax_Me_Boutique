$(document).ready(function() {

  var domElement = $("#service_title");
  var domElement2 = $("#service_price");
  var domElement3 = $("#service_time");
  var domElement4 = $("#service_details");

  var timer = setInterval(specials, 5000);

  $.ajax({
    dataType: 'json',
    url: '/services/show_specials',
    success: function(data){
      domElement.html(data.service_name);
      domElement2.html("$" + data.cost);
      domElement3.html(data.time + " minutes");
      domElement4.html(data.description);
    },
    error: function() {
      domElement.html("No response. The server may be down.")
    }
  })

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