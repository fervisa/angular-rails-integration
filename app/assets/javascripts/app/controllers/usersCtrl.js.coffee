angular.module('demoApp').controller 'usersCtrl', ['$scope', 'User', ($scope, User) ->
  $scope.users = User.query()

  $scope.edit = (user) ->
    $scope.selectedUser = user

  $scope.selected = (user) ->
    $scope.selectedUser == user

  $scope.close = ->
    $scope.selectedUser = null

  $scope.update = (user) ->
    updatedUser = new User user
    updatedUser.$update()
]

angular.module('demoApp').factory 'User', ['$resource', ($resource) ->
  $resource '/users/:id.json', { id: '@id' }, { update: { method: 'PUT' } }
]
