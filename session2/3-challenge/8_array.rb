# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
yes = false
  array.each_with_index do |e, index|
  yes = true if array[index] == array[index+1] && array[index] == array[index-1] unless index == 0
  return true if yes
  end
  return false
end
