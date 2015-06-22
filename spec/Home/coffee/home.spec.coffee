'use strict'

describe 'MainController', ->

  $controller = undefined
  $scope = undefined

  beforeEach module 'app'

  beforeEach inject (_$rootScope_, _$controller_) ->
    $controller = _$controller_
    $rootScope = _$rootScope_
    $scope = $rootScope.$new()
    $controller 'MainController', $scope: $scope

  describe 'scope.text', ->
    it 'Should equal "Hello World!"', ->
      expect $scope.text
        .toBe 'Hello World!'

  describe 'passwordLength()', ->
    it 'Should return short if password is less than 5 char', ->
      expect $scope.passwordLength '1234'
        .toBe 'Short'

    it 'Should return Long if password is more than 10 char', ->
      expect $scope.passwordLength 'longlonglong'
        .toBe 'Long'

    it 'Should return Just Right if 5 < password > 10', ->
      expect $scope.passwordLength 'proper'
        .toBe 'Just Right(?)'


