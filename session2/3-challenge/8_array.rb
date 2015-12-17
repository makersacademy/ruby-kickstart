# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (array)
	array.each.with_index do |num, ind|
		next if ind <= 1
		return true if num == array[ind-1] && num == array[ind-2]
	end
	false
end

