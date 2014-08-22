var assert;

require('../dist/rodash');

assert = require('assert');

describe('Array', function() {
  describe('#map()', function() {
    return it('should invoke the given block once for each element and return a new array with the result', function() {
      return assert.deepEqual([2, 4, 6], [1, 2, 3].map(function(i) {
        return i * 2;
      }));
    });
  });
  describe('#mapBang()', function() {
    return it('should invoke the given block once for each element and replace it in place', function() {
      var array;
      array = [1, 2, 3];
      array.mapBang(function(i) {
        return i * 2;
      });
      return assert.deepEqual([2, 4, 6], array);
    });
  });
  return describe('#toSentence()', function() {
    return it('should concatenate elements into a sentence', function() {
      return assert.equal("1, 2 and 3", [1, 2, 3].toSentence());
    });
  });
});
