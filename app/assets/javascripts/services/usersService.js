angular
  .module('seedAndSee')
  .factory('usersService', usersService);

usersService.$inject = ['$http'];

function usersService($http) {
  var factory = {};

  factory.getUsers = function() {
    return $http.get('/api/users/:id');
  }

  return factory;

}
