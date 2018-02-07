# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)

  @repeating_value_present = 0
  array.each_with_index {|value, index| @repeating_value_present +=1 if value == array[index+1] && value == array[index+2]}
  @repeating_value_present > 0 ? true : false
# better with each_cons but this is my own solution :) not the best since it will continue iterating after it found the right answer
end