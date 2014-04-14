def in_permutations?(string1, string2)
  if string1 == string2
    return true
  end

  permutations = string2.split('').permutation(string2.length).map {|e| e.join}

  if permutations.include?(string1)
    return true
  else
    false
  end

end

Array#permutations


p in_permutations?("the", "hte")
p in_permutations?("the", "te")


def sorted_permute(string1, string2)
  string1.split('').sort.join == string2.split('').sort.join
end

puts
# p sorted_permute("the", "hte")
# p sorted_permute("the", "ter")


def all_perms(string)
  if string.length == 1
    string
  else
    for perm in all_perms(string[1..-1])
      for i in (0..string.length)
        p (perm[0..i] + string[0..1].join + perm[i..-1].to_s).split('')
      end
    end
  end
end


def all_perms(array)
  if array.length == 1
    array
  else
    all_perms(array[1..-1]).each do |perm|
      (0..array.length).each do |i|
        perm[0..i] + array[0] + perm[i..-1]
      end
    end
  end
end

p all_perms("this".split(''))
