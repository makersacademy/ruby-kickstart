# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

#ary = [1,1,3,1,7,2,8,2]

#print ary.count(1) #returns 3 

def got_three?(elements)
  elements.each_cons 3 do |a, b, c|
   if a == b && b == c 	
   	 return true
  end 
  end 
  	return false
end

print got_three? [2,2,1,1,3,5,5,5]
	





