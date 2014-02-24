$(function(){

  var appendTasks = function(tasks) {
      // add the tasks for each offer
      var taskList = "<ul class='task-list'>";
      for (var i = 0, l = tasks.length; i < l; ++i) {
        taskList += "<li class='task " + tasks[i]['task_type'] + "'></li>";
      };
      taskList += "</ul>"
      return taskList
  }

  var listOffers = function(data){
    var offerList = $('ul.offer-list');
    for (var i = 0, l = data.length; i < l; ++i) {
      offerList.append("<li class='offer col-md-4'>" + 
        "<img class='offer-image' src='" + data[i]['image_url'] + "' alt='" + data[i]['name'] + "'>" + 
        "<p class='offer-desc'>" + data[i]['description'] + "</p>" + 
        appendTasks(data[i]['tasks']) + "</li>");
    }
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
