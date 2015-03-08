# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	three = []
	array.each_with_index {|x , index| if x == array[index+1] && x == array[index+2]; three << x; end}
	if three.count > 0
		true
	else
		false
	end
end