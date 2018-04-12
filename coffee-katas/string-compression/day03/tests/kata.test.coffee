import Compressor from '../kata'

describe 'string compression', ->
  compressor = undefined

  beforeEach ->
    compressor = new Compressor

  test 'compress single char string', ->
    expect(compressor.compress('a')).toEqual('1a')

  test 'compress tripled char string', ->
    expect(compressor.compress('aaa')).toEqual('3a')

  test 'compress string of different chars', ->
    expect(compressor.compress('abc')).toEqual('1a1b1c')