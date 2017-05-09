angular
  .module('seedAndSee')
  .factory('gardenService', gardenService);

gardenService.$inject = ['$http'];

function gardenService($http) {
	var factory = {}

	factory.getGarden = function() {
		return $http.get('/api/users/garden');
	}

	factory.createGarden = function() {
		return $http.post('/api/users/garden');
	}

	return factory;
}