_   = require 'underscore'
pad = require 'pad'

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

  convertToTimeString: (timeStamp) ->
    timeStamp = timeStamp * -1 if timeStamp < 0
    time = new Date timeStamp

    convertFunctions =
      withMinutes: (t) -> "#{pad 2, t.getMinutes(), '0'}:#{pad 2, t.getSeconds(), '0'}.#{pad 3, t.getMilliseconds(), '0'}"
      withoutMinutes: (t) -> "#{pad 2, t.getSeconds(), '0'}.#{pad 3, t.getMilliseconds(), '0'}"

    return convertFunctions.withoutMinutes time if timeStamp < 60000
    convertFunctions.withMinutes time

module.exports = lapandtime
