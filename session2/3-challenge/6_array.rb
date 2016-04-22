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
    num_array = (1..self)
    primes_array = []
    num_array.each do |divisor|
      if self % divisor == 0
        primes_array << divisor
      end
    end
    if primes_array.count == 2
      true
    elsif self < 2
      false
    else
      false
    end
  end
end

def prime_chars?(strings)
  strings.join.length.prime?
end
