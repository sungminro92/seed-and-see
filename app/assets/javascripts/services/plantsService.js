angular
  .module('seedAndSee')
  .factory('plantsService', plantsService);

plantsService.$inject = ['$http'];

function plantsService($http) {
  var factory = {};

  factory.getPlants = function() {
    return $http.get('/api/plants');
  }

  factory.plantShow = function(id) {
  	return $http.get('/api/plants/' + id);
  }

  // NEED MORE CLEAR UNDERSTANDING! 
  factory.saveToGarden = function(plant_id) {
    return $http.post('/api/users/gardenplants', {plant_id: plant_id});
  }

  return factory;
}
