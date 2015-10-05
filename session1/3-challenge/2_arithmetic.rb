# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)
	a_half = a/2.to_f
	b_half = b/2.to_f
	if a_half < b_half
		return a_half
	else 
		return b_half 
	end 
end
