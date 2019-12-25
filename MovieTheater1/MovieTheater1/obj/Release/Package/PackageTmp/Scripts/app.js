/// <reference path="angular.min.js" />

var myApp = angular.module('myModule', [])

.controller('myController',['$scope', function ($scope) {
    $scope.value = 0;
    $scope.myFunc = function() {
        $scope.value++;
    }
}]);

