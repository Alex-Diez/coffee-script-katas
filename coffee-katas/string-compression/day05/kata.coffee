export default class Compressor
  compress: (src) ->
    i = 0
    compressed = ''
    while i < src.length
      count = 0
      c = src[i]
      while c == src[i]
        count += 1
        i += 1
      compressed += count + c
    compressed
