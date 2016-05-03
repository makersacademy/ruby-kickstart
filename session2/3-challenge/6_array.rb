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

def prime_chars?(string_array)
	no_of_chars = string_array.join.length
	divider = 2
	is_prime = true
	no_of_chars.times do
		if divider == no_of_chars
			break
		elsif no_of_chars % divider ==  0
			is_prime = false
			break
		else
			divider += 1
		end
	end
	is_prime
end