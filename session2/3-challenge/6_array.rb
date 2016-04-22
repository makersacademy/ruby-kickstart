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

	def is_prime?(num)
		return false if num < 2
   		Math.sqrt(num).floor.downto(2).each {|i| return false if num % i == 0}
   		true
	end

	array2 = array_of_strings.map { |e| e.length  }
	numbers = array2.inject(0){|sum,x| sum + x }
	numbers.to_f
	is_prime?(numbers)
end


