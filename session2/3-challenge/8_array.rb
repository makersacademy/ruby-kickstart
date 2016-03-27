# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def get_three? (array)
	count = 0
 	array.each_cons(3).map { |a, b, c| [a, b, c].push}.each do |a, b, c|
 		count += 1 if a == b && b == c 
 	end
 	return true if count != 0
end