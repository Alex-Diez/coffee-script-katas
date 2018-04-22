export default class Compressor
  compress: (src) ->
    compressed = ''
    i = 0
    while i < src.length
      c = src[i]
      count = 0
      while c == src[i]
        count += 1
        i += 1
      compressed += count + c
    compressed