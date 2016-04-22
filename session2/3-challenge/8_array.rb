# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)

gotThree = false

array.each_with_index do |x,i|

	if x == array[i+1] && x == array[i+2] && i!= array.length - 1
	
		gotThree = true
	break if gotThree == true
        else
		gotThree = false
	end
end
gotThree
end
puts got_three? [1, 2, 2, 2, 3]  # => true
puts got_three? ['a', 'a', 'b']  # => false
puts got_three? ['a', 'a', 'a']  # => true
puts got_three? [1, 2, 1, 1]     # => false

