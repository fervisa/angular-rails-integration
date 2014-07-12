angular.module('demoApp').controller 'homeCtrl', ['$scope', ($scope) ->
  $scope.elements = 
    [
      { name: 'element 1', value: true },
      { name: 'element 2', value: false },
      { name: 'element 3', value: false },
    ]

  $scope.edit = (element) ->
    $scope.selectedElement = element

  $scope.selected = (element) ->
    $scope.selectedElement == element

  $scope.close = ->
    $scope.selectedElement = null
]
