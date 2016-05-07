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

  length = array.join.length
  return false if length <= 1 # 0 and 1 aren't primes
  Math.sqrt(length).to_i.downto(2).each { |x| return false if length % x == 0} #finds the square root of length, 
  #then test each number incrememntally from that number down to 2, to see whether length is divisible by it.
  true 

end

prime_chars?(['a', 'b', 'c'])