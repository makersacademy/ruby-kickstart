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

def prime_chars?(strings)
  sum = 0
  strings.each {|str| sum += str.length}
  is_prime?(sum)
end

def is_prime?(number)
  return true if number == 2
  return false if number % 2 == 0 || number == 1
  i = 3
  while i <= Math.sqrt(number)
    return false if number % i == 0
    i += 2
  end
  return true
end