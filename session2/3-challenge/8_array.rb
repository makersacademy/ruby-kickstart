# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	array.each_cons(3) do |a, b, c| 
		return true if a == b && b == c 
	end
	false
end



=begin IDEAS
1, Return true if the element shows up three times in a row?
	1.1 Iterate across the elements comparing one with the other?
	1.2 Can compare two at a time? So maybe set a variable to true after 2 and true after 3
		or if 1  + 2 compare the same goes to step 3 where it compares 2 + 3 only then it returns true.
	1.3 So two step comparison operator each loop?
=end
