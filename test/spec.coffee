require '../dist/rodash'

assert = require 'assert'

describe 'Array', ->
  describe '.tryConvert', ->
    it 'should return an array if passed an array', ->
      array = [1,2]
      assert.equal array, Array.tryConvert(array)

  describe '#map()', ->
    it 'should invoke the given block once for each element and return a new array with the result', ->
      assert.deepEqual [2,4,6], [1,2,3].map (i) -> i*2

  describe '#mapBang()', ->
    it 'should invoke the given block once for each element and replace it in place', ->
      array = [1,2,3]
      array.mapBang (i) -> i*2
      assert.deepEqual [2,4,6], array

  describe '#toSentence()', ->
    it 'should concatenate elements into a sentence', ->
      assert.equal "1, 2 and 3", [1,2,3].toSentence()
