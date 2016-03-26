# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	answer = false
	counter = 0

	while counter <= array.length - 1  do  										

		array.each do |element|
			# element 1
			# counter 1 
			if element == array[counter + 1] && element == array[counter+2]
				return true
			end
		counter += 1
		end	


	end	
	answer
end	

puts got_three?([1, 2, 2, 1])