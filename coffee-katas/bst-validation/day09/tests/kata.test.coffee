import { BstValidator, Node } from '../kata'

describe 'bst validation', ->
  validator = new BstValidator

  test 'empty tree is valid', ->
    expect(validator.validate(undefined)).toBeTruthy()

  test 'single item tree is valid', ->
    expect(validator.validate(new Node(1))).toBeTruthy()

  test 'tree is invalid when left greater than root', ->
    expect(validator.validate(new Node(1, new Node(2)))).toBeFalsy()

  test 'tree is invalid when right less than root', ->
    expect(validator.validate(new Node(2, undefined, new Node(1)))).toBeFalsy()

  test 'tree is invalid when right and left than root', ->
    expect(validator.validate(new Node(2, new Node(1), new Node(1)))).toBeFalsy()
