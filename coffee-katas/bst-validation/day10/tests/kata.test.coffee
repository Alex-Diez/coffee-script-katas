import { BstValidator, Node } from '../kata'

describe 'bst validation', ->
  validator = new BstValidator()

  test 'empty tree is valid', ->
    expect(validator.validate(undefined)).toBeTruthy()

  test 'single node tree is valid', ->
    expect(validator.validate(new Node(1))).toBeTruthy()

  test 'tree is invalid when left is greater than root', ->
    expect(validator.validate(new Node(1, new Node(2)))).toBeFalsy()

  test 'tree is invalid when right is less than root', ->
    expect(validator.validate(new Node(2, undefined, new Node(1)))).toBeFalsy()

  test 'tree is invalid when right and left is less than root', ->
    expect(validator.validate(new Node(2, new Node(1), new Node(1)))).toBeFalsy()
