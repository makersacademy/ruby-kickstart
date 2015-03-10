# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? num_array
	num_array.each_with_index do |num, index|
		return true if num == num_array[index + 1] && num == num_array[index + 2]
	end
	false
end