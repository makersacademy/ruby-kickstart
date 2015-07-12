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


class Integer
  def prime?
    return false if self < 2
    2.upto Math.sqrt(self) do |i|   # think about it as a shortcut to testing if it's a prime number! For example, if it's 17, we can test, 2, 3, 4 etc until 16. But there's bound to be some repetition (similar numbers). The easiest is to divide it exactly by half which is the square root. And that's all we have to check up to.
      return false if self % i == 0
    end
    true
  end
end

def prime_chars? array
  joint = array.join('')
  sum = joint.length
  sum.prime?
end

puts prime_chars? ['abcde']





