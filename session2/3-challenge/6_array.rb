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
    ('1' * self) !~ /^1?$|^(11+?)\1+$/
  end
  def is_prime?
        Math.sqrt(self).floor.downto(2).each do |i|
          return false if (self % i == 0)
        end
        return false if (self <= 1)
        true
  end
end
def prime_chars?(arr)
  arr.join.length.prime?
end

def prime_chars?(array_of_strings)
    sum = array_of_strings.join.length
    final_output = true
    for i in 2..1009
        final_output = false if sum % i == 0 && sum != i
    end
    final_output = false if sum == 1
    final_output
end

def prime_chars?(array_of_strings)
  array_of_strings.join.length.is_prime?
end
