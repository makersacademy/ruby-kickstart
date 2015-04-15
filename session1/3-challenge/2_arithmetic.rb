# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)
	if a < b
		num = a.to_f / 2
		return num
	else
		num2 = b.to_f / 2
		return num2
	end
end

arithmetic2(1, 2)
arithmetic2(19, 10)
arithmetic2(-6, -7)