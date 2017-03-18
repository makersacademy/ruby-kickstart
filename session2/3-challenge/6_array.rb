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
# convert strings into a number to be tested
    number = 0
    array.each { |str| number += str.length}

# test to see if number is prime
# 1 and 0 are not prime numbers
# sqrt method for testing primes
    return false if number <= 1
    Math.sqrt(number).to_i.downto(2).each {|i| return false if number % i == 0}
    true
end

puts prime_chars?(["AB"])
