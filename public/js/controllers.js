'use strict';

/* Controllers */

var deliveryControllers = angular.module('deliveryControllers', []);

deliveryControllers.controller('ProductsCtrl', ['$scope', 'Product',
  function($scope, Product) {
    $scope.products = Product.all();
  }]);

