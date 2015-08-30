var rsvpApp = angular.module('rsvp', []);

rsvpApp.controller('rsvpController', function($scope, $http){

  $scope.rsvp = {};

  $scope.submit = function(){
    if($scope.rsvp_form.$valid){
      $http({
        url: 'rsvp.json', 
        data: $scope.rsvp,
        method: 'POST',
        headers: {
          'X-Csrf-Token': auth_token
        }
      }).then(function(){
        $scope.rsvpSent = true;
      });
    }
  };

  $scope.checkboxesValid = function(){
    return $scope.rsvp.mehendi || $scope.rsvp.wedding || $scope.rsvp.reception;
  }
});