# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	array.each_with_index do |item, i|
		next_item = array[i+1]
		next_next_item = array[i+2]
		return true if item == next_item && item == next_next_item
	end
	false
end