 @license
 rodash 0.0.1
 Copyright 2014 Obie Fernandez <http://obiefernandez.com/>
 Available under MIT license - see LICENSE

Load the library that kind of inspired this project to begin with, the
awesomely awesome lodash port of Underscore.

    _  = require 'lodash'

Map aka `collect` is actually built-in to JavaScript, but let us
reimplement it anyway, just for kicks.

    Array.prototype.map = (block) ->
      _.map @, block

    Array.prototype.mapBang = (block) ->
      idx = 0
      _.map @, (element) =>
        @[idx] = block(element)
        idx++

    Array.prototype.toSentence = ->
      @slice(0, @length - 1).join(', ') + " and " + @slice(-1)
