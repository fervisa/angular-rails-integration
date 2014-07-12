angular.module('demoApp').controller 'personsCtrl', ['$scope', 'Person', ($scope, Person) ->
  $scope.persons = Person.query()
]

angular.module('demoApp').factory 'Person', ['$resource', ($resource) ->
  $resource '/persons/:id'
]
