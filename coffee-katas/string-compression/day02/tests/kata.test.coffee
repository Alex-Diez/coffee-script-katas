import Compressor from '../kata'

describe 'string compression', ->
  compressor = undefined

  beforeEach ->
    compressor = new Compressor

  test 'compress single char string', ->
    expect(compressor.compress('a')).toEqual('1a')

  test 'compress doubled char string', ->
    expect(compressor.compress('aa')).toEqual('2a')

  test 'compress string of three different chars', ->
    expect(compressor.compress('abc')).toEqual('1a1b1c')

  test 'compress string of doubled three different chars', ->
    expect(compressor.compress('aabbcc')).toEqual('2a2b2c')
