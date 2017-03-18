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

def prime_chars?(arr)
	l = arr.join.length
	if l > 3
		2.step(l-1) do |i|
			if l%i == 0
				return false
			end
		end
	elsif [0,1].count(l) > 0
		return false
	end
	true
end

#p prime_chars? ['ab', 'c']  
#p prime_chars? ['a', 'b', 'cd'] 
#p prime_chars? ['a', 'berw', 'cd'] 
