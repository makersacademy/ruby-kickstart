# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:


def got_three?(arr)
	new_arr = []
	arr.each_cons(3) {|a, b, c| new_arr << [a, b, c]}
	new_arr.each do |x|
		if x[0] == x[1] && x[0] == x[2]
			return true
		end
	end
	false
end

 #p got_three? [1, 2, 2, 2, 3]  # => true
 #p got_three? ['a', 'a', 'b']  # => false
 #p got_three? ['a', 'a', 'a']  # => true
 #p got_three? [1, 2, 1, 1]     # => false