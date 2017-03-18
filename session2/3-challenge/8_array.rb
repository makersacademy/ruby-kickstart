# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (elem_array)
  elem_array.length.times do |check|
    return true if elem_array[check] == elem_array[check+1] && elem_array[check+1] == elem_array[check+2]
  end
  return false
end

#got_three? ([1, 2, 2, 2, 3])