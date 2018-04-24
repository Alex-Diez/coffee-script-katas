export default class EditDistance
  isOneDistance: (s, t) ->
    m = s.length
    n = t.length
    if (m > n) 
      this.isOneDistance(t, s)
    else if (n - m > 1)
      false
    else
      shift = n - m
      i = 0
      while i < m && s[i] == t[i]
        i += 1
      if i == m
        shift > 0
      else
        if shift == 0
          i += 1
        while i < m && s[i] == t[i + shift]
          i += 1
        i == m
