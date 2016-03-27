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



# def prime_chars?(strings)
# 	counter = 1
# 	prime_counter = 0
# 	new_string_length = strings.join.length

# 	while counter <= new_string_length do 				 
# 		prime_counter += 1 if new_string_length % counter == 0
# 		counter += 1	
# 	end
# 	return prime_counter == 2
# end	


require 'prime'

def prime_chars?(strings)
	new_string_length = strings.join.length
	return Prime.first(new_string_length).include?(new_string_length)
end


 
