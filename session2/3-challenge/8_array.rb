# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	test = false
	count = 0
	array.each_with_index { |element, index| (count == 2 ? (true if element == array[index - 1]) : (element == array[index + 1])) ? (count += 1) : (count = 0) 
		break if count == 3 }
	test = true if count == 3
	test
end