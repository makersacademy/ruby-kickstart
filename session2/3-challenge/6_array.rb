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

=begin 

1, method takes an array of strings
	join all strings in array together using .join
	.length to find the length
2, method returns true if the sum of all the characters is prime. 
	need to check remainders from 2 up to the number (so divide length by every number from 2 untill length)
3, return the answer.

=end

def prime_chars?(array)
	array_length = array.join.length
	return false if array_length < 2
	(2..array_length).each do | d | 
		return true if array_length % d == 0
	end
	false
end



#needs to iterate using numbers from 2 up untill itself checking if it gets remainder 0 when divided







