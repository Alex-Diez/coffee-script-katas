import OneEditDistance from '../kata'

describe 'one edit distance', ->
  edit = undefined
  beforeEach ->
    edit = new OneEditDistance

  test 'when one string longer than other on two chars', ->
    expect(edit.isOneEditDistance('abc', 'abcde')).toBeFalsy()
    expect(edit.isOneEditDistance('abcde', 'abc')).toBeFalsy()

  test 'when need to append one item', ->
    expect(edit.isOneEditDistance('abcde', 'abcdeX')).toBeTruthy()

  test 'when need to swap single char', ->
    expect(edit.isOneEditDistance('abcde', 'abXde')).toBeTruthy()

  test 'when need to swap two chars', ->
    expect(edit.isOneEditDistance('abcde', 'abXYe')).toBeFalsy()

  test 'when need to insert one char', ->
    expect(edit.isOneEditDistance('abcde', 'abcXde')).toBeTruthy()
