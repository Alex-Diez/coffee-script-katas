export class BstValidator
  validate: (tree, min = Number.MIN_VALUE, max = Number.MAX_VALUE) ->
    !tree? ||
      min < tree.val &&
      tree.val < max &&
      this.validate(tree.left, min, tree.val) &&
      this.validate(tree.right, tree.val, max)

export class Node
  constructor: (val, left, right) ->
    this.val = val
    this.left = left
    this.right = right
