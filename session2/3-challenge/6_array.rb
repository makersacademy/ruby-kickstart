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

# We're worth with integers here so let's create this method in the Integer class
class Integer
  def prime?
    # return false if the current object is less than 2
    return false if self < 2
    # From 2 up to the square root of the current object do:
    2.upto Math.sqrt(self) do |i|
      # return false if the current object when devided by i leaves no remainder
      return false if self % i == 0
    end
    # return true otherwise
    true
  end
end
# A method to see if the array of strings combied is a prime number
def prime_chars?(strings)
  # Join the inputted string, find the length, is it prime?
  strings.join.length.prime?
end

=begin Without comments:

class Integer

  def prime?
    return false if self < 2
    2.upto Math.sqrt(self) do |i|
      return false if self % i == 0
    end
    true
  end

end

def prime_chars?(strings)
  strings.join.length.prime?
end

=end
