# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(strings)
	counter = 2
	new_string_length = strings.join.length
	answer = false

	if new_string_length < 2
	
		return answer
	end

	if new_string_length < 3
		return true
	end

	while counter <= new_string_length do 				#  4   6
		if new_string_length % counter == 0						#  
			return answer
		else 
			answer = true
		end	
		counter += 1	
	end
	answer
end	

 
# puts prime_chars?(["7", "q", "5AW"])
# puts prime_chars(["abd","c"])  
# puts prime_chars(["abc","cd","e"])   