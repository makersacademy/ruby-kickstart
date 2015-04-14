# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

#steps
	#set-up a function called got_three? that takes an array
	#search array elements to see if a particular element shows up 3 times in a row (not just 3 times)
	#returns true - does not have to store in a new array

def got_three?(array)
	result = []
	array.each_cons(2){|a, b| result << "1" if a == b}

	puts result.length #logic doesn't work because could be 1,1,2,2 and be three in a row
	if result.length >= 2
		puts "True: it has three or more of the same element in a row"
		return true
	else
		puts "False: it does not have three or more of the same element in a row"
		return false
	end
end

got_three?([1, 2, 2, 2, 3])
got_three?([1, 1, 2, 2, 3])

