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

def prime_chars? arr
  num = arr.join.size

  if num == 1
   return false
 elsif num == 2 || num == 3
   return true
  elsif num % 2 == 0 || num % 3 == 0
    return false
  else
    return true
  end
end

puts prime_chars? ['a','b','c']
puts prime_chars? ['ciao','bye']
