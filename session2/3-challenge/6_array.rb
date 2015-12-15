# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#

def prime_chars?(array_strings)
  sum = array_strings.join('').length.to_i
  is_the_num_prime = true
  if sum <= 1
    is_the_num_prime = false
  else
  for num in 2...sum
    is_the_num_prime = false if sum % num == 0
  end
  end
  is_the_num_prime
end

# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false

#prime_chars? ['a', 'b', 'cd']   # => false
#prime_chars? 45672
