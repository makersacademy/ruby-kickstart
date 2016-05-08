# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(input)
count = 1
previous = 0
input.each do |x|
	if x == previous 
		count += 1
	else
		count = 1
	end
	previous = x
	return true if count == 3
end
	return false
end
