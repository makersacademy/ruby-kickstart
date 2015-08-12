# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (strings)
	answer = false
	i = 0
	while i < (strings.length)
		answer = true if strings[i] == strings[i+1] && strings[i+2]
		i+=1
	end
	answer
end 

# can't work out why method returns true for got_three? ['a', 'a', 'b']. returns correct answer for other examples.