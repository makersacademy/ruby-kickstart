# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	array.each_cons(3) do |a, b, c| #groups of 3 elements pass to the method
		return true if a == b && b == c #need 3 in a row so 1st 2nd and 3rd must be the same
	end
	false
end


