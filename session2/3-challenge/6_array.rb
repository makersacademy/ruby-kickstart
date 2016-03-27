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

def prime_chars?(to_test)
return to_test.join.length.prime?
end

# okay, so having researched this later on, it seems requiring the prime module
# may be a kind of cheat. however, I have looked at the "manual" way of doing
# it, and in doing so learned a lot. although I think it would be disingenuous
# to use what I learned as a solution to this exercise, as I would never have come
# up with it myself. but there are a number of variations on the same idea at
# http://stackoverflow.com/questions/3594345/ruby-determine-if-a-number-is-a-prime
# looking at these has again demonstrated to me how to break down a problem
# and also that there are a number of different ruby methods that can be applied
# in the solution.
