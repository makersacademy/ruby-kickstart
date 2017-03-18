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

require 'prime'

def prime_chars?(strings)

	num = strings.join.length
	if Prime.prime?(num) == true
		puts "This is a prime number"
		return true
	else 
		puts "Not a prime number"
	end
end

prime_chars?(["ab", "cd"])
prime_chars?(['a', 'b', 'c'])



#steps
	#method that takes an array parameter of strings
	#iterator that needs to count the number of characters in each string (.count?) then test if prime (sum - find logical expression for only divided by 1 and itself)
		#need to count characters within each element - or count entire length of array if join it
		#need to build logic to test if output is prime
	#returns true (no need for variable or puts etc)
