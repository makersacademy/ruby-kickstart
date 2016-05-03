# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(num_array)

	result = false
	num_array.each_with_index do |num, index|
		if index > 0 && index < (num_array.length - 1)
			if num_array[index] == num_array[index - 1] && num_array[index] == num_array[index + 1]
				result = true
				break
			end
		end
	end
	result

end