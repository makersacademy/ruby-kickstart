# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false





def got_three?(elements)

	#.each_cons Iterates the given block for each array of consecutive <n> elements. 
	#If no block is given, returns an enumerator.


  elements.each_cons 3 do  |x, y, z| 
  return true if x == y && y == z 
  end
  false
end

