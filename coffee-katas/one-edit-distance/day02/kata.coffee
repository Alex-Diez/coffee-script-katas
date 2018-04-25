export default class OneEditDistance
  isOneEditDistance: (s, t) ->
    m = s.length
    n = t.length
    if (m > n)
      this.isOneEditDistance(t, s)
    else if (n - m > 1)
      false
    else
      i = 0
      shift = n - m
      while i < m && s[i] == t[i]
        i += 1
      if (shift == 0)
        i += 1
      while i < m && s[i] == t[i + shift]
        i += 1
      i == m
