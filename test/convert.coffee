assert                 = require 'assert'
differencebetweentimes = require '../lib/differencebetweentimes'

describe '#convert convert time string to timestamp -', ->
  it 'basic convertions', ->
    assert.equal differencebetweentimes.convert('00.500'),    500
    assert.equal differencebetweentimes.convert('01.500'),    1500
    assert.equal differencebetweentimes.convert('03:18.380'), 198380

  it 'convertion with 0 milliseconds and with two equal units', ->
    assert.equal differencebetweentimes.convert('01:01.000'), 61000
