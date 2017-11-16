$(document).ready(function() {

  	// var feed2 = new Instafeed({
   //      target: 'our_instafeed',
   //      get: 'user',
   //      clientId: '4798865111324c578fe9738bcbcf1515',
   //      accessToken: '19580610.4798865.9f1ea8ae93ab4c108798aa9a3897180f',
   //      userId: '1274887324',
   //      limit: '5',
   //  });
   //  feed2.run();

    var Spectra = {
	  accessToken: '19580610.4798865.9f1ea8ae93ab4c108798aa9a3897180f',
	  clientId: ' 4798865111324c578fe9738bcbcf1515',

	  init: function () {
	    $.fn.spectragram.accessData = {
	      accessToken: this.accessToken,
	      clientID: this.clientId
	    };

	    $('#our_instafeed').spectragram('getUserFeed',{
	      max: 5,
	      query: 'waxmeboutique'
	    });
	  }
	}

	Spectra.init();
})