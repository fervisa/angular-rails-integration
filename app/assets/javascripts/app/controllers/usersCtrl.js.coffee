angular.module('demoApp').controller 'usersCtrl', ['$scope', 'User', ($scope, User) ->
  $scope.users = User.query()
]

angular.module('demoApp').factory 'User', ['$resource', ($resource) ->
  $resource '/users/:id'
]
