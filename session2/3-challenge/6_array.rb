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
prime_numbers  = Prime.entries(100)
p prime_numbers

def prime_chars?(array)
  array.join.length do |num|
    return true if num % 1 == 0 || num % num == 0
    end
    return false
  end
end

def prime_chars?(array)
  array.join.length { |num| keep_if? num % 1 == 0 ? true : false}.map {|num|keep_if? num % num == 0 ? true : false}
end

# Examples of length three
puts prime_chars? ['abc']
puts prime_chars? ['a', 'bc']
puts prime_chars? ['ab', 'c']
puts prime_chars? ['a', 'b', 'c']
#
# Examples of length four
puts prime_chars? ['abcd']
puts prime_chars? ['ab', 'cd']
puts prime_chars? ['a', 'bcd']
puts prime_chars? ['a', 'b', 'cd']
