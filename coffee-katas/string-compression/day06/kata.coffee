export default class Compressor
  compress: (src) ->
    i = 0
    compressed = ''
    while i < src.length
      c = src[i]
      counter = 0
      while c == src[i]
        i += 1
        counter += 1
      compressed += counter + c
    compressed
