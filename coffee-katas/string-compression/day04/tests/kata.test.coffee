import Compressor from '../kata'

describe 'compression of', ->
  compressor = undefined

  beforeEach ->
    compressor = new Compressor

  test 'single char string', ->
    expect(compressor.compress('a')).toEqual('1a')

  test 'tripled char string', ->
    expect(compressor.compress('aaa')).toEqual('3a')

  test 'different chars string', ->
    expect(compressor.compress('abc')).toEqual('1a1b1c')

  test 'doubled different chars string', ->
    expect(compressor.compress('aabbcc')).toEqual('2a2b2c')
