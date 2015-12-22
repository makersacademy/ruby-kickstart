# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(input)
  choice = false
  for i in 0...(input.length-2)
    choice = true if input[i] == input[i+1] && input[i] == input[i+2]
  end
  choice
end

#got_three? [1, 2, 2, 2, 3] 

