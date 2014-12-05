assert     = require 'assert'
lapandtime = require '../lib/lapandtime'

describe """#differenceBetweenTimes is the public API from lib - returns the difference between
the first time/index from parameter and the another indexes""", ->
  it 'basic difference between two times', ->
    assert.deepEqual lapandtime.differenceBetweenTimes(['00.500', '01.000']), ['00.500', '+00.500']

  it 'difference between 3 times with negative and positive difference times', ->
    assert.deepEqual lapandtime.differenceBetweenTimes(['1:14.098', '1:13.998', '1:14.198']), ['1:14.098', '-00.100', '+00.100']
