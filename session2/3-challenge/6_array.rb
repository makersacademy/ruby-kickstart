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

def prime_chars?(array)
	number = array.join.length
	return false if number < 2
	if (2..number/2).none?{|x| number % x == 0} == true
		return true
	else
		return false
	end
end

=begin

So I want to say, starting from the number 2, modulo this number by all the numbers between 2 and itself. 
Then, if any are zero, return false. Otherwise, return true.

=end
