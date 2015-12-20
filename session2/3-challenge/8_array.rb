# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  three_in_a_row = false
  elems_limit = array.size - 3
  return three_in_a_row if elems_limit < 0
  for index in 0..elems_limit
    three_in_a_row = ( (array[index] == array[index+1]) && (array[index] == array[index+2]) )
    break if three_in_a_row
  end
  three_in_a_row
end
