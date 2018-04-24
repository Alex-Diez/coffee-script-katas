import EditDistance from '../kata'

describe 'one edit distance', ->
  edit = undefined

  beforeEach ->
    edit = new EditDistance();

  test 'when need to modify one char', ->
    expect(edit.isOneDistance('abcde', 'abXde')).toBeTruthy();

  test 'when lengths are different in more than two chars', ->
    expect(edit.isOneDistance('abcde', 'abc')).toBeFalsy();
    expect(edit.isOneDistance('abc', 'abcde')).toBeFalsy();

  test 'when need to append one char', ->
    expect(edit.isOneDistance('abcde', 'abcdeX')).toBeTruthy();

  test 'when need to insert one char', ->
    expect(edit.isOneDistance('abcde', 'abcXde')).toBeTruthy();