export default class Game
  constructor: () ->
    @pins = 0
    @rolls = []

  roll: (pin) ->
    @pins += pin
    @rolls.push pin

  score: () ->
    score = 0
    roll = 0
    for _ in [1..10]
      if this.isStrike(roll)
        score += 10 + this.strikeBonus(roll)
        roll += 1
      else if this.isSpare(roll)
        score += 10 + this.spareBonus(roll)
        roll += 2
      else
        score += @rolls[roll] + @rolls[roll + 1]
        roll += 2
    score

  isStrike: (index) ->
    @rolls[index] == 10

  strikeBonus: (index) ->
    @rolls[index + 1] + @rolls[index + 2]

  isSpare: (index) ->
    @rolls[index] + @rolls[index + 1] == 10

  spareBonus: (index) ->
    @rolls[index + 2]