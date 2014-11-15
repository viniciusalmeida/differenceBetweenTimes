assert     = require 'assert'
lapandtime = require '../lib/lapandtime'

describe 'time string to timestamp functionality -', ->
  it 'basic convertions', ->
    assert.equal lapandtime.convert('00.500'),    500
    assert.equal lapandtime.convert('01.500'),    1500
    assert.equal lapandtime.convert('03:18.380'), 198380

  it 'convertion with 0 milliseconds and with two equal units', ->
    assert.equal lapandtime.convert('01:01.000'), 61000
