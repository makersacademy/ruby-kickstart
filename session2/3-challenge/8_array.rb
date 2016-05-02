# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
def got_three?(array)
  result = array.select.with_index { |i, index| array[index+1] == i && array[index+2] == i }
  return true if result.length > 0
  false
end
