_  = require 'lodash'

Array.prototype.map = (block) ->
  _.map @, block

Array.prototype.mapBang = (block) ->
  idx = 0
  _.map @, (element) =>
    @[idx] = block(element)
    idx++

Array.prototype.toSentence = ->
  @slice(0, @length - 1).join(', ') + " and " + @slice(-1)
