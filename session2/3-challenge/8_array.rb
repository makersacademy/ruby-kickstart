# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (arr)
	count = 0
  	last = arr.first
  	arr.each do |d|
    	if d==last
      		count += 1
      		return true if count==3
    	else
      		last = d
      		count = 1
    	end
  	end
  	false
end