angular.module('demoApp', ['ngRoute', 'ngResource'])

angular.module('demoApp')
  .config ( $routeProvider ) ->
    $routeProvider
      .when '/',
        templateUrl: 'home/index.html'
        controller: 'homeCtrl'
      .when '/users',
        templateUrl: 'users/index.html'
        controller: 'usersCtrl'
      .otherwise
        redirectTo: '/'
