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
	sum = 0
	array.each do |string|
		sum += string.length.to_i
	end

	return false if sum <=1

	max = Math.sqrt(sum)
	(2..max).any? do |p|
		return false if sum % 1 == 0
		end
		true

	#!!prime =(1 * sum) !~ /^1?$|^(11+?)\1+$/ && sum % 1 == 0 && sum != 0 && sum != 1
	#!!prime = sum % 1 == 0 && sum != 0 && sum != 1
end

p prime_chars? ['abchd']