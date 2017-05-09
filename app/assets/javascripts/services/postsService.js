angular
  .module('seedAndSee')
  .factory('postsService', postsService);

postsService.$inject = ['$http', '$stateParams'];

function postsService($http, $stateParams) {
  var factory = {};

  factory.getPosts = function() {
    return $http
    	.get('/api/posts');
  }

  factory.getPost = function(userId, id) {
    return $http
      .get('/api/users/' + userId + '/posts/' + id);
  }

  factory.updatePost = function(userId, id, post) {
    return $http
      .put('/api/users/' + userId + '/posts/' + id, post);
  }

  factory.createPost = function(newPost, userId) {
  	return $http
  		.post('/api/users/' + userId + '/posts/', newPost);
  }

  return factory;


}
