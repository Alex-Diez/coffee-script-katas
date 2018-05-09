export class BstValidator
  validate: (tree, min = Number.MIN_VALUE, max = Number.MAX_VALUE) ->
    if tree?
      if min < tree.val && tree.val < max
        this.validate(tree.left, min, tree.val) && this.validate(tree.right, tree.val, max)
      else
        false
    else
      true

export class Node
  constructor: (val, left, right) ->
    this.val = val
    this.left = left
    this.right = right
