import { BstValidator, Node } from '../kata'

describe 'validate bst', ->
  validator = new BstValidator()

  test 'empty tree is valid', ->
    expect(validator.validate(undefined)).toBeTruthy()

  test 'tree of one item is valid', ->
    expect(validator.validate(new Node(1))).toBeTruthy()

  test 'tree of three items from bigger to smaller', ->
    expect(validator.validate(new Node(2, new Node(3), new Node(1)))).toBeFalsy()

  test 'tree of seven items from bigger to smaller', ->
    expect(
      validator.validate(
        new Node(
          4,
          new Node(
            6,
            new Node(7),
            new Node(5)
          ),
          new Node(
            2,
            new Node(3),
            new Node(1)
          )
        )
      )
    ).toBeFalsy()
