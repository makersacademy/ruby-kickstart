# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(things)
	for i in 0..(things.length - 3)
		return true if things[i] == things[i+1] && things[i+1] == things[i+2]
	end
	return false
end

#p got_three? [1, 2, 1, 1] 