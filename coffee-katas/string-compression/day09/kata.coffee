export default class Compressor
  compress: (src) ->
    compressed = ''
    i = 0
    while i < src.length
      count = 0
      c = src[i]
      while c == src[i]
        count += 1
        i += 1
      compressed += count + c
    compressed
