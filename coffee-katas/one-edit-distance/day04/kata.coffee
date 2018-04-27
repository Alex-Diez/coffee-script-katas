export default class OneEditDistance
  isOneEditDistance: (s, t) ->
    [m, n] = [s.length, t.length]
    if m > n
      this.isOneEditDistance(t, s)
    else if n - m > 1
      false
    else
      [i, shift] = [0, n - m]
      i += 1 while i < m && s[i] == t[i]
      i += 1 if shift == 0
      i += 1 while i < m && s[i] == t[i + shift]
      i == m