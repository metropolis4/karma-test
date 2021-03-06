// Generated by CoffeeScript 1.9.3
(function() {
  'use strict';
  describe('MainController', function() {
    var $controller, $scope;
    $controller = void 0;
    $scope = void 0;
    beforeEach(module('app'));
    beforeEach(inject(function(_$rootScope_, _$controller_) {
      var $rootScope;
      $controller = _$controller_;
      $rootScope = _$rootScope_;
      $scope = $rootScope.$new();
      return $controller('MainController', {
        $scope: $scope
      });
    }));
    describe('scope.text', function() {
      return it('Should equal "Hello World!"', function() {
        return expect($scope.text).toBe('Hello World!');
      });
    });
    return describe('passwordLength()', function() {
      it('Should return short if password is less than 5 char', function() {
        return expect($scope.passwordLength('1234')).toBe('Short');
      });
      it('Should return Long if password is more than 10 char', function() {
        return expect($scope.passwordLength('longlonglong')).toBe('Long');
      });
      return it('Should return Just Right if 5 < password > 10', function() {
        return expect($scope.passwordLength('proper')).toBe('Just Right(?)');
      });
    });
  });

}).call(this);
