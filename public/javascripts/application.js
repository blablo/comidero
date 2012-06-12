// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var map;
      function initialize() {
        var myOptions = {
          zoom: 12,
          center: new google.maps.LatLng(20.674307, -103.387442),
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById('map_canvas'),
            myOptions);

	sucursales.forEach(function(item) {
	var marker = new google.maps.Marker({
        position: item,
        map: map,
        title:"Hello World!"
	  });

			   });
      }

      google.maps.event.addDomListener(window, 'load', initialize);