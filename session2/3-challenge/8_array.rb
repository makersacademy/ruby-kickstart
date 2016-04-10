# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	counter = 1
	tracker = 0
	stack = []
	until (counter == 3 or tracker == array.length)
		if array[tracker] == stack.last
			counter += 1
		else
			counter = 1
		end
		stack.push(array[tracker])
		tracker += 1
	end
	counter == 3
end

