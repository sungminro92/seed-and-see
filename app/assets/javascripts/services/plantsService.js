angular
  .module('seedAndSee')
  .factory('plantsService', plantsService);

plantsService.$inject = ['$http'];

function plantsService($http) {
  var factory = {};

  factory.getPlants = function() {
    return $http.get('/api/plants');
  }

  return factory;

}
