import Compressor from '../kata'

describe 'compression of', ->
  comperssor = undefined

  beforeEach ->
    comperssor = new Compressor

  test 'single char string', ->
    expect(comperssor.compress('a')).toEqual('1a')

  test 'different chars string', ->
    expect(comperssor.compress('abc')).toEqual('1a1b1c')

  test 'doubled different chars string', ->
    expect(comperssor.compress('aabbcc')).toEqual('2a2b2c')
