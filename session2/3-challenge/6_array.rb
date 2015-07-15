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

class Integer   # Allows our method to be called on integers
  def primenumber?  #Defines our method name
    return false if self < 2      # 2 and 1 are never prime numbers
    2.upto Math.sqrt(self) do |i| # The Math class allows you to call square root
    return false if self % i == 0 
    end
    true
  end
end

def prime_chars? (array)
count = 0                           # Sets count of chars variable
array.each {|s| count += s.length}  # For each item in array, use .length and add to count variable.
count.to_i.primenumber?             # Conevrts count to integer and calls primenumber method on it
end

puts prime_chars? ['abcd']
puts prime_chars? ['ab', 'c']

# no_of_chars = count_chars ["abc"]
# puts no_of_chars.primeno?
