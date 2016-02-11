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

def prime_chars?(array_of_strings)
	if array_of_strings.length == 1 
		string = array_of_strings[0]
		sum = 0 + string.length
	else
		sum = 0 + array_of_strings.join.length
	end
	final_output = true
	for i in 2..sum
		final_output = false if sum % i == 0 && sum != i 
	end
	final_output = false if sum == 1 || sum == 0
	final_output
end

