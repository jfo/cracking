

def unique?(string)

  test_chars = string.split('')

  until test_chars.length == 0
    char = test_chars.pop
    if test_chars.include? char
      return false
    end
  end

  true

end

def unique_recurse(string)
  if string[1..-1].include?(string.slice(0))
    return false
  elsif string.length == 1
    return true
  else
    unique_recurse(string[1..-1])
  end
end




test = "not that it's impossible"
test1 = "the"

p unique?(test)
p unique?(test1)
p unique?('three')
puts
p unique_recurse(test)
p unique_recurse(test1)
p unique_recurse('three')

