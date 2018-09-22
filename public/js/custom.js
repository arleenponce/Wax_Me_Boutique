$(document).ready(function() {
	var userFeed = new Instafeed({
    get: 'user',
    userId: '1274887324',
    limit: 4,
    resolution: 'standard_resolution',
    accessToken: '1274887324.1677ed0.5942c550d18346d4b7aa58b43bab89c6',
    sortBy: 'most-recent',
    template: '<div class="col-md-3 gallery instaimg"><a href="{{image}}" target="_blank"><img src="{{image}}" alt="{{caption}}" class="img-fluid" height="280px" /></a></div>',
  });
	userFeed.run();
});
