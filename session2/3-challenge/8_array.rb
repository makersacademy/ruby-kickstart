# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
=begin
def got_three? (strings)
	answer = false
	for i in 0..(strings.length-2)
		answer = true if strings[i] == strings[i+1] && strings[i+2]
	end
	answer
end 

# can't work out why method returns true for got_three? ['a', 'a', 'b']. returns correct answer for other examples.

puts got_three? [1, 2, 2, 2, 3] 
puts got_three? ['a', 'a', 'b'] 
puts got_three? ['a', 'a', 'a'] 
puts got_three? [1, 2, 1, 1]
=end

def got_three? (strings)
	answer = false
	strings.each_cons(3) do |x, y, z|
		return true if x == y && y == z
	end	
end
