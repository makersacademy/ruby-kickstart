# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
def got_three? input
  i, output = 0, false
  while i < input.length && output == false
    if input[i] == input [i+1] && input[i] == input [i+2]
      output = true
    end
    i = i + 1
  end
  output
end
