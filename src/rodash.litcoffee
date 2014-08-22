Rodash 0.0.1
------------

Copyright © 2014 Obie Fernandez
http://obiefernandez.com/

Available under MIT license - see LICENSE

## Dependencies

Load the library that kind of inspired this project to begin with, the
awesomely awesome lodash port of Underscore. That's pretty much it for
dependencies at the moment.

    _  = require 'lodash'


## Array Extensions

#### map(fn)
Map aka `collect` is actually built-in to JavaScript, but let's
reimplement it anyway, just for kicks. Pass it a function and it
will call that function with each element of the array, passing
the results back to you as a new array.

    Array.prototype.map = (fn) ->
      _.map @, fn

#### mapBang(fn)
This port of `map!` is the same as its namesake, in other words, it has side
effects instead of returning a new array instance. Unfortunately,
you are not allowed to use a ! character in functions, so I spelled it out.

    Array.prototype.mapBang = (fn) ->
      idx = 0
      _.map @, (element) =>
        @[idx] = fn(element)
        idx++

#### toSentence()
Converts the array to a comma-separated sentence where the last element is joined by the connector word.

    Array.prototype.toSentence = ->
      @slice(0, @length - 1).join(', ') + " and " + @slice(-1)

#### tryConvert()
Tries to convert `obj` into an array. Returns the converted array
or null if obj cannot be converted for any reason. Ternary conditionals
are so much nicer in Coffeescript than other languages with the more
terse ? : syntax.

    Array.tryConvert = (obj) ->
      if obj instanceof Array then obj else null
