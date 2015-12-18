# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false


# returns true if element appears three times...needs to be consecutive
# def got_three?(array)
# 	true if array.length.to_i-2 == array.uniq.length.to_i
# end


def got_three?(array)
	# .each iterates the block for an array of consecutive elements - define the number in ()
	array.each_cons (3) do | x, y, z| 
		return true if x == y && y == z
	end
end