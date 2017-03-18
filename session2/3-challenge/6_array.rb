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

array = ["hi","yo"]  # => ["hi", "yo"]

x = 0            # => 0
n = array.join.size  # => 4
while n > x
x +=1
break of n%
end
                # => 4
# Leaving this one where it seems the only way would be for each number to be counted up to 17,425,000 to see if its divisable (the largest prime number)
