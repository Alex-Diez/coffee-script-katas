export class Game
  constructor: () ->
    @rolls = []

  roll: (pin) ->
    @rolls.push pin

  score: () ->
    s = 0
    roll = 0
    for _ in [1..10]
      if this.isStrike(roll)
        s += 10 + this.strikeBonus(roll)
        roll += 1
      else if this.isSpare(roll)
        s += 10 + this.spareBonus(roll)
        roll += 2
      else
        s += @rolls[roll] + @rolls[roll + 1]
        roll += 2
    s

  isStrike: (roll) ->
    @rolls[roll] == 10

  strikeBonus: (roll) ->
    @rolls[roll + 1] + @rolls[roll + 2]

  isSpare: (roll) ->
    @rolls[roll] + @rolls[roll + 1] == 10

  spareBonus: (roll) ->
    @rolls[roll + 2]