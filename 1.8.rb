def rotation?(string1, string2)
  (string1 * 2).include?(string1)
end

p rotation?("waterbottle", "erbottlewat")
