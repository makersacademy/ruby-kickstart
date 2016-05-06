# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(ary)

	outcome = false

	for index in 0..(ary.length-2)

# For the elements of the array in the range of index 0 to the second to last value...
		
		outcome = (ary[index] == ary[index + 1]) && (ary[index] == ary[index + 2])

# For this conditional to be true the current element must have the same value as the two elements following it.

		break if outcome

	end

	outcome

end