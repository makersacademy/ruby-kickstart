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


# prime_chars? ['abcd', 'efgh', 'i', 'jk'] EXAMPLE

def prime_chars?(array)

  n = array.join.length # => n = 13

  num_array = *(1..n) # => num_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

  num_array.select! {|divisor| n % divisor == 0} # => [1, 13]
    # (so I've selected from the num_array all the numbers that go into 13 (n) with no remainder - hmmm, not so many now!)
  if num_array.size == 2 # the size of num_array now = 2
    true # YES
  elsif n < 2
    false # NO
  else
    false # NO
end
end
