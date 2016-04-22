# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(input_array)

  input_array.each_with_index do |value, index|
    if index > input_array.length-3
      return false
    elsif value == input_array[index+1] && value == input_array[index+2]
        return true
    end
  end
  false                                                                         #empty array
	
end