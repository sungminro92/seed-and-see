angular
  .module('seedAndSee')
  .factory('commentsService', commentsService);

commentsService.$inject = ['$http'];

function commentsService($http) {
	var factory = {}

	factory.createComment = function(postId, comment) {
		return $http.post('/api/users/posts/' + postId + '/comments', comment);
	}

	factory.deleteComment = function(userId, postId, id) {
    return $http
      .delete('/api/users/' + userId + '/posts/' + postId + '/comments/' +id )
  	}

	return factory;
}