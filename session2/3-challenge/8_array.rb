# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (ary)

	threeInARow = false

	ary.each_index do |i| 

		unless i - 2 < 0 || i - 1 < 0 

			threeInARow = true if ary.fetch(i) == ary.fetch(i - 2) && ary.fetch(i) == ary.fetch(i - 1) 

		end

	end

	threeInARow

end

puts got_three? [1, 2, 2, 2, 3]  # => true
puts got_three? ['a', 'a', 'b']  # => false
puts got_three? ['a', 'a', 'a']  # => true
puts got_three? [1, 2, 1, 1]     # => false
