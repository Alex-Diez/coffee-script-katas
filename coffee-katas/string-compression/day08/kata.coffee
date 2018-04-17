export default class Compressor
  compress: (src) ->
    i = 0
    compressed = ''
    while i < src.length
      counter = 0
      c = src[i]
      while c == src[i]
        i += 1
        counter += 1
      compressed += counter + c
    compressed
