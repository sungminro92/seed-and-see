angular
  .module('seedAndSee')
  .factory('usersService', usersService);

usersService.$inject = ['$http'];

function usersService($http) {
  var factory = {};

  factory.getUser = function(id) {
    return $http.get('/api/users/' + id);
  }

  return factory;
}
