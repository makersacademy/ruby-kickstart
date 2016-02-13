# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (ary)

	count = 0
	ary.map.with_index do |value,i|  
		 i > 0 && value == ary[i-1] ? count += 1 : count = 1 
		break if count == 3
	end

	count >=3


end