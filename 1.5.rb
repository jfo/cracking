# def compress(string)

#   input = string.split('')
#   output = []

#   input.each_with_index do |i, e|
#     if e == input[i+1]
#       c = 2
#       c += 1 until input[c] != e
#       input[i] = e + c
#     end
#   end

#   input.join

# end


def compressrec(string, acc = [])
  string = string.split('') if string.class == String
  count = 1

  if string.length == 0
    return acc.join
  end

  count += 1 until string[count] != string[0]

  if count == 2
    acc << string[0]
    acc << string[1]
  elsif count > 2
    acc << string[0] + count.to_s
  else
    acc << string[0]
  end

  compressrec(string[count..-1], acc )

end



p compressrec('aaaaaaabbbbbbb')
p compressrec('avaaaaaabbbbbbb')
p compressrec('this is an attempt')


def decompress(string)
end
