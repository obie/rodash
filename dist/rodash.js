var _;

_ = require('lodash');

Array.prototype.map = function(fn) {
  return _.map(this, fn);
};

Array.prototype.mapBang = function(fn) {
  var idx;
  idx = 0;
  return _.map(this, (function(_this) {
    return function(element) {
      _this[idx] = fn(element);
      return idx++;
    };
  })(this));
};

Array.prototype.toSentence = function() {
  return this.slice(0, this.length - 1).join(', ') + " and " + this.slice(-1);
};
