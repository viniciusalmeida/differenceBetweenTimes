assert     = require 'assert'
lapandtime = require '../lib/lapandtime'

describe '#convertToTimeString convert timestamp to time string -',  ->

  time = null

  beforeEach ->
    time = new Date 0

  it 'basic convertion (a complete timestring - with minutes, seconds and milliseconds)', -> 
    # Setup 01:42.286
    time.setMilliseconds('286')
    time.setSeconds('42')
    time.setMinutes('1')

    assert.equal lapandtime.convertToTimeString(time.getTime()), '01:42.286'

  it 'convertion short (when timestring have only seconds and milliseconds)', ->
    # Setup 46.053
    time.setMilliseconds('053')
    time.setSeconds('46')

    assert.equal lapandtime.convertToTimeString(time.getTime()), '46.053'
