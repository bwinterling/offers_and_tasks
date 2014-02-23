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
