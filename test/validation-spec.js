var assert = require('assert');

var validation = require('../').validation;

describe('Validation', function() {
  describe('Mobile number validation', function() {
    it('should return false for empty parameter', function() {
      assert.equal(validation.validateMobile(), false);
    });
  });
});
