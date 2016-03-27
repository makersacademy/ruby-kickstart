# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
	count = 0 											# This is a counter that looks for consecutive instances of an element
	i = 3														# This the number of consecutive instanes we're looking for (three in a row)
	previous = arr.first						# Start the counter from the first array element
	arr.each do |n|								
		if n == previous							# If the current element is the same as the last element,
			count += 1									# then add to the counter
			return true if count == i   # If the counter reaches 3, then return true
		else
			previous = n 								# Otherwise reset the counter to 1
			count = 1
		end
	end
	false
end