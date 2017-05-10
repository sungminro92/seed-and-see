angular
  .module('seedAndSee')
  .factory('gardenService', gardenService);

gardenService.$inject = ['$http'];

function gardenService($http) {
	var factory = {}

	factory.getGarden = function(userId) {
		return $http.get('/api/users/' + userId + '/garden');
	}

	factory.createGarden = function(userId, garden) {
		return $http.post('/api/users/' + userId + '/garden', garden);
	}

	return factory;
}