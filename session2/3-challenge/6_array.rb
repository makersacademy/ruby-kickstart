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
    2.upto Math.sqrt(self) do |i|
      return false if self % i == 0
    end
    true
  end
end

def prime_chars?(strings)
	strings.join.length.prime?
end

# prime? is a Ruby inbuilt method that returns true if number is a prime, which is calculated by taking strings, splitting characters (join) and counting (length)
# so unsure you need to define prime? albeit can't get it to work without including definition (which I need to review again re use of SELF...)
# on basis you do need to define it, I see why you have put inside class Integer, because you are adding a new method to this class (even thought I think it's already there?!)
