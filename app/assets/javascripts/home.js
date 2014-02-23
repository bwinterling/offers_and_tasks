// $(function() {
//   "use strict";

//   Map.plotGauges = function(geojson) {
//     L.mapbox.map('map', 'srtsrt32.haldb884')
//       .setView([Map.defaultLat, Map.defaultLong], Map.defaultZoom)
//       .featureLayer.setGeoJSON(geojson);
//   };

//   Map.fetchGauges = function(callback) {
//     $.ajax({
//       type: 'GET',
//       dataType: 'json',
//       url: '/api/v1/gauges',
//       success: callback
//     });
//   };



//   Map.fetchGauges(Map.plotGauges);
// });

$(function(){

  var listOffers = function(data){
    console.log(data);
  };

  var fetchOffers = function(callback){
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'api/v1/offers',
      success: callback
    });
  };

  fetchOffers(listOffers);

});
