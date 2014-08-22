 # Rodash 0.0.1

 Copyright 2014 Obie Fernandez http://obiefernandez.com/

 Available under MIT license - see LICENSE

Load the library that kind of inspired this project to begin with, the
awesomely awesome lodash port of Underscore.

    _  = require 'lodash'

## Array Extensions

#### map

Map aka `collect` is actually built-in to JavaScript, but let us
reimplement it anyway, just for kicks. Pass it a function and it
will call that function with each element of the array, passing
the results back to you as a new array.

    Array.prototype.map = (fn) ->
      _.map @, fn

#### mapBang

This port of `map!` is the same as its namesake, in other words, it has side
effects instead of returning a new array instance. Unfortunately,
you are not allowed to use a ! character in functions, so I spelled it out.

    Array.prototype.mapBang = (fn) ->
      idx = 0
      _.map @, (element) =>
        @[idx] = fn(element)
        idx++

#### toSentence()

    Array.prototype.toSentence = ->
      @slice(0, @length - 1).join(', ') + " and " + @slice(-1)
