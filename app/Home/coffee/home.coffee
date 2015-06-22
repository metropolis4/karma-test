angular.module 'app', ['ngRoute','ngMock']

# .factory 'User', ($http) ->
#   $http.get 'Users/users.json'


.controller 'MainController', ($scope) ->
  $scope.text = 'Hello World!'
  $scope.passwordLength = (password) ->
    password = password.length
    switch
      when password < 5 then "Short"
      when password > 10 then "Long"
      else "Just Right(?)"

