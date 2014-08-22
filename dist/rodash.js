var _;

_ = require('lodash');

Array.prototype.map = function(block) {
  return _.map(this, block);
};

Array.prototype.mapBang = function(block) {
  var idx;
  idx = 0;
  return _.map(this, (function(_this) {
    return function(element) {
      _this[idx] = block(element);
      return idx++;
    };
  })(this));
};

Array.prototype.toSentence = function() {
  return this.slice(0, this.length - 1).join(', ') + " and " + this.slice(-1);
};
