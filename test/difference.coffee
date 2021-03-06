assert                 = require 'assert'
differencebetweentimes = require '../lib/differencebetweentimes'

describe '#difference between timestamps (considering the first index from timestamps array) -', ->
  it 'difference between two indexes on timestamps array', ->
    assert.deepEqual differencebetweentimes.difference([500, 1000]), [500, 500]
    assert.deepEqual differencebetweentimes.difference([500, 250]),  [500, -250]

  it 'difference between more of two indexes on timestamps array (considering the first index from timestamps array)', ->
    assert.deepEqual differencebetweentimes.difference([500, 250, 750]), [500, -250, 250]
