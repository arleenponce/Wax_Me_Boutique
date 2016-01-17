$(document).ready(function() {
  var feed = new Instafeed({
        target: 'others_instafeed',
        get: 'tagged',
        tagName: 'waxmeboutique',
        clientId: '4798865111324c578fe9738bcbcf1515',
        accessToken: '19580610.1677ed0.6329a93d992842bea67e3dbd8c804ec9',
        limit: '5',
        // template: '<a href="{{link}}"><img src="{{image}}"/></a><br/><label><b></b>: {{caption}}</label>'
    });
    feed.run();

  var feed2 = new Instafeed({
        target: 'our_instafeed',
        get: 'user',
        clientId: '4798865111324c578fe9738bcbcf1515',
        // userId: '19580610',
        userId: '1274887324',
        accessToken: '19580610.1677ed0.6329a93d992842bea67e3dbd8c804ec9',
        limit: '5',
    });
    feed2.run();
})