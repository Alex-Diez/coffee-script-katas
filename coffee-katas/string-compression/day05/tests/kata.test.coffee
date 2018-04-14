import Compressor from '../kata'

describe 'compression of', ->
  compressor = undefined

  beforeEach ->
    compressor = new Compressor

  test 'single char string', ->
    expect(compressor.compress('a')).toEqual('1a')

  test 'tripled char string', ->
    expect(compressor.compress('aaa')).toEqual('3a')

  test 'three different chars string', ->
    expect(compressor.compress('abc')).toEqual('1a1b1c')
