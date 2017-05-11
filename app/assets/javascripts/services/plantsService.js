angular
  .module('seedAndSee')
  .factory('plantsService', plantsService);

plantsService.$inject = ['$http'];

function plantsService($http) {
  var factory = {};

  factory.getPlants = function() {
    return $http.get('/api/plants');
  }

  factory.plantShow = function(plant_name) {
  	return $http.get('/api/plants/' + plant_name);
  }

  // NEED MORE CLEAR UNDERSTANDING! 
  factory.saveToGarden = function(plant_id, plant_name, plant_icon) {
    return $http.post('/api/users/gardenplants', {plant_id: plant_id, plant_name: plant_name, plant_icon: plant_icon});
  }

  return factory;
}
