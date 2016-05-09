# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime..
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
# Creates a new method that takes one argument,
# an array in the format [a, b].

  require 'prime'
  # Requires the prime class, which allows us
  # to use its methods.

  Prime.prime?(array.join.length)
  # (1) the code in breackets takes the array
  #     and joins each substring together into
  #     a single string, e.g. ["a", "b"] becomes
  #     "ab"
  # (2) .length then calculates the length of the
  #     resulting string.
  # (3) the prime? method from the Prime class is
  #     boolean called on the resulting value to
  #     check if the value is a prime or not.
end