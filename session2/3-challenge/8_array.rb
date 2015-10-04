# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? array
	counter = 0
	
	while counter < array.length
		if array[counter] == array[counter + 1] && array[counter + 1] == array[counter + 2]
			return true
		else
			counter += 1
		end

	end
	false
end	