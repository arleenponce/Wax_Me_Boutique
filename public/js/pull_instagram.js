$(document).ready(function() {
  // var feed = new Instafeed({
  //       target: 'others_instafeed',
  //       get: 'tagged',
  //       tagName: 'waxmeboutique',
  //       clientId: '4798865111324c578fe9738bcbcf1515',
  //       accessToken: '1274887324.1677ed0.5942c550d18346d4b7aa58b43bab89c6'
  //       accessToken: '19580610.1677ed0.6329a93d992842bea67e3dbd8c804ec9',
  //       limit: '5',
  //       template: '<a href="{{link}}"><img src="{{image}}"/></a><br/><label><b></b>: {{caption}}</label>'
  //   });
  //   feed.run();

  var feed2 = new Instafeed({
        target: 'our_instafeed',
        get: 'user',
        clientId: '4798865111324c578fe9738bcbcf1515',
        accessToken: '19580610.4798865.e026e967744d4ee797d7605256675fbf',
        userId: '1274887324',
        limit: '5',
    });
    feed2.run();
})