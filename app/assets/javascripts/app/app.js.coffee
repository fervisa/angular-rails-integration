angular.module('demoApp', ['ngRoute', 'ngResource'])

angular.module('demoApp')
  .config ( $routeProvider ) ->
    $routeProvider
      .when '/',
        templateUrl: 'home/index.html'
        controller: 'homeCtrl'
      .when '/persons',
        templateUrl: 'persons/index.html'
        controller: 'personsCtrl'
      .otherwise
        redirectTo: '/'
