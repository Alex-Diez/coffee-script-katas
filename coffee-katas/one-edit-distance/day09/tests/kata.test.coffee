import OneEditDistance from '../kata'

describe 'one edit distance', ->
  edit = undefined

  beforeEach ->
    edit = new OneEditDistance

  test 'when append single char', ->
    expect(edit.isOneEditDistance('abcde', 'abcdeX')).toBeTruthy()

  test 'when append two chars', ->
    expect(edit.isOneEditDistance('abcde', 'abcdeXY')).toBeFalsy()
    expect(edit.isOneEditDistance('abcdeXY', 'abcde')).toBeFalsy()

  test 'when swap single char', ->
    expect(edit.isOneEditDistance('abcde', 'abXde')).toBeTruthy()

  test 'when swap two chars', ->
    expect(edit.isOneEditDistance('abcde', 'abXYe')).toBeFalsy()

  test 'when insert one char', ->
    expect(edit.isOneEditDistance('abcde', 'abcXde')).toBeTruthy()
