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


def prime_chars? (arr)
	arr.each_char.with_index {|a, b| a + b}
end
prime_chars? [1,2,3,4,5,67,7,]
=begin 
- add each charecter within an array
- determine of the sum of the array is a prime number
- if the sum of the number of characters is a prime number => return true
	x % x == 0 && x % 1 == 0
=end