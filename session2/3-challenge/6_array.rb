
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

class Integer

	def is_prime?

		return false if self < 2
		(2..Math.sqrt(self)).each do |x|
		
		return false if self % x == 0
		end
		true
	end
end 
 	def prime_chars?(array)
 	array.join.length.is_prime?
 end




puts  prime_chars? ['a']
puts  prime_chars? ['abc']            # => true
#puts  prime_chars? ['a', 'bc']        # => true
#puts  prime_chars? ['ab', 'c']        # => true
#puts  prime_chars? ['a', 'b', 'c']


