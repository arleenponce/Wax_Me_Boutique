$(document).ready(function() {

var domElement = $("#service_title");
var domElement2 = $("#service_price");
var domElement3 = $("#service_time");
var domElement4 = $("#service_details");

var timer = setInterval(specials, 3000);

$.ajax({
  dataType: 'json',
  url: '/services/show_specials',
  success: function(x){
    domElement.html(x.service_name);
    domElement2.html(x.cost);
    domElement3.html(x.time);
    domElement4.html(x.description);
  },
  error: function() {
    domElement.html("No response. The server may be down.")
  }
})

function specials() {
  $.ajax({
    dataType: 'json',
    url: '/services/show_specials',
    success: function(x){
    domElement.html(x.service_name);
    domElement2.html(x.cost);
    domElement3.html(x.time);
    domElement4.html(x.description);
    },
    error: function() {
      domElement2.html("Function is not functioning")
    }
  })
}
})
//
//
// $(document).ready(function() {
//
// var domElement = $("#tag_1_title");
// var domElement2 = $("#tag_1_ingredients");
// var domElement3 = $("#tag_1_image");
// var interval = setInterval(resetPic, 5000);
//
// $.ajax({
//  dataType: 'json',
//  url: '/recipes/get_random_recipe',
//  success: function(data){
//    domElement.html(data.title);
//    domElement2.html(data.ingredients);
//    domElement3.html("<img src='" + data.image + "'/>");
//    domElement3.html("<%= image_tag(" + data.image + "(:med)) %>");
//  },
//  error: function(){
//    domElement.html("No response.  The server may be down.");
//  }
// });
//
// function resetPic() {
//   $.ajax({
//     dataType: 'json',
//     url: '/recipes/get_random_recipe',
//     success: function(data){
//       domElement.html(data.title);
//       domElement2.html(data.ingredients);
//       domElement3.html("<img src='" + data.image + "'/>");
//     },
//     error: function(){
//       domElement.html("No response.  The server may be down.");
//     }
//   });
// };
// });
