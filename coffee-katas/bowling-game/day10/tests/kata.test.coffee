import Game from '../kata';

describe 'bowling game', ->
  game = undefined

  beforeEach ->
    game = new Game

  rollMany = (times, pin) ->
    for _ in [1..times]
      game.roll pin

  rollSpare = () ->
    game.roll 4
    game.roll 6

  rollStrike = () ->
    game.roll 10

  test 'gutter game', ->
    rollMany 20, 0

    expect(game.score()).toEqual(0)

  test 'all ones', ->
    rollMany 20, 1

    expect(game.score()).toEqual(20)

  test 'one spare', ->
    rollSpare()
    game.roll 3
    rollMany 17, 0

    expect(game.score()).toEqual(16)

  test 'one strike', ->
    rollStrike()
    game.roll 4
    game.roll 3
    rollMany 16, 0

    expect(game.score()).toEqual(24)

  test 'perfect game', ->
    rollMany 12, 10

    expect(game.score()).toEqual(300)
