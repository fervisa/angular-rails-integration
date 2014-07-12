angular.module('demoApp', ['ngRoute'])

angular.module('demoApp')
  .config ( $routeProvider ) ->
    $routeProvider
      .when '/',
        templateUrl: 'home/index.html'
        controller: 'homeCtrl'
      .otherwise
        redirectTo: '/'
