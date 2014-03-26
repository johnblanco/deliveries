'use strict';

/* App Module */

var deliveries = angular.module('deliveries', [
  'ngRoute',
  'deliveryControllers',
  'deliveryServices'
]);

deliveries.run(function($rootScope, $templateCache) {
  $rootScope.$on('$viewContentLoaded', function() {
    $templateCache.removeAll();
  });
});

deliveries.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: '/partials/products.html',
        controller: 'ProductsCtrl'
      })
  }]);
