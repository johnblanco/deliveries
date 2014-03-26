'use strict';

/* Services */

var deliveryServices = angular.module('deliveryServices', ['ngResource']);

deliveryServices.factory('Product', ['$resource',
  function($resource){
    return $resource('/products/all', {}, {
      all: {method:'GET', isArray: true}
    });
  }]);

