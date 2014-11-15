_ = require 'underscore'

lapandtime =
  version: '0.0.1'
  standardLimiter: /(\.|:)/
  timeUnits: ['Milliseconds', 'Seconds', 'Minutes', 'Hours']

  convert: (timeString) ->
    date = new Date 0

    data = _.filter timeString.split(@standardLimiter), (i) ->
      return true if parseInt(i, 10) == 0
      !!parseInt(i, 10)
    .reverse()

    for i, index in data
      date["set#{@timeUnits[index]}"](i)

    date.getTime()

module.exports = lapandtime
