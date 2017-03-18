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



def is_prime(num)

	if (num < 2)
		return false
	end

	if (num == 2)
		return true
	end

	2.upto(num - 1) do |val|

		if num % val == 0 
			return false
		end
	end
	return true
end
def prime_chars?(strings)
	if (strings == nil or strings.empty?)
		return false
	end

	total_length = strings.join.length 
	return is_prime(total_length)
end

