# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (array)
	#I started in that direction
	#array.each_cons(3) { |a, b, c| new_array << [a, b, c] }
	# but it was getting complicated so moved to something easier.
	l = array.length
	i= 0
	tf=false
	while i!=(l-2)
	  if array[i] == array[i+1] && array[i] == array[i+2]
	  tf=true
	  end
	i+=1
	end
tf
end
