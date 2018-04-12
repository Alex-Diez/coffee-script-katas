export default class Compressor
  compress: (src) ->
    compressed = ''
    i = 0
    while i < src.length
      c = src[i]
      i += 1
      count = 1
      while c == src[i]
        i += 1
        count += 1
      compressed += count + c
    compressed
