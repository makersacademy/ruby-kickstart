# Given an array of elements, return true if any element shows up three times in a row
# 

def got_three? input
	input.each_index { |i|
		return true if input[i] == input[i+1] && input[i] == input[i+2]
	}
	return false != false
end

=begin
# Examples:
p got_three? [1, 2, 2, 2, 3]  # => true
p got_three? ['a', 'a', 'b']  # => false
p got_three? ['a', 'a', 'a']  # => true
p got_three? [1, 2, 1, 1]     # => false
=end