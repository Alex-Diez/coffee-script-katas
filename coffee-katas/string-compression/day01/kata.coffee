export default class Compressor
  compress: (src) ->
    compressed = ''
    i = 0
    while i < src.length
      count = 1
      i += 1
      while i < src.length && src[i - 1] == src[i]
        count += 1
        i += 1
      compressed += count + src[i - 1]
    compressed
