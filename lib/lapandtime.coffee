_ = require 'underscore'

lapandtime =
  version: '0.0.1'
  standardLimiter: /(\.|:)/
  timeUnits: ['Milliseconds', 'Seconds', 'Minutes', 'Hours']

  convert: (timeString) ->
    date = new Date 0

    explodedTimeString = _.filter timeString.split(@standardLimiter), (chunk) ->
      return true if parseInt(chunk, 10) == 0
      !!parseInt(chunk, 10)
    .reverse()

    for chunk, index in explodedTimeString
      date["set#{@timeUnits[index]}"](chunk)

    date.getTime()

module.exports = lapandtime
