# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? array
  counter = 1
  
  array.each_index do |i| 
    break if counter == 3 || array[i + 1] == nil 
    if array[i] == array[i + 1]
      counter += 1
    else
      counter = 1
    end
  end
  counter == 3 ? true : false
end