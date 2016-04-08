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

=begin
class Integer
  def prime?
    return false if self < 2
    i = 2
    while i < Math.sqrt(self).floor
      if self % i == 0
        return false
      end
      i += 1
    end
    true
  end
end
=end

def prime_chars?(array)
  len = array.join.length
  if len < 2
    return false
  else
    i = 2
    while i <= Math.sqrt(len)
      return false if len % i == 0
      i += 1
    end
  end
  true
end

