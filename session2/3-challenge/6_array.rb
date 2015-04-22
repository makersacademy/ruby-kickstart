ee
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

<<<<<<< HEAD
def prime_chars?(arr_of_strings)
  output = arr_of_strings.join.length.is_prime? #our input arr_of_strings are joined as a string, their length is measured, and is_prime? tells us whether this length is a prime number
  puts output
end

#need to define another method that finds out if input is prime, then incorporate that method into this method

class Integer
  def is_prime?
    return false if self < 2 #returns false because 1 does not count as prime (though does not satisfy below condition so needs to be defined separately)
    2.upto Math.sqrt(self) do |i|
      return false if self % i == 0 #returns false if current object is divisible by any number 'i' (so not prime)
    end
    true #returns true if the above conditions are not met (so the curent object is prime)
  end
end

#the output is going to be either true or false, so at some point we need to add this (either in prime_chars? or is_prime??)
#"return false/true" > put into is_prime? method


prime_chars? ['abc']
prime_chars? ['a', 'bc']
prime_chars? ['ab', 'c']
prime_chars? ['a', 'b', 'c']
prime_chars? ['abcd']
prime_chars? ['ab', 'cd']
prime_chars? ['a', 'bcd']
prime_chars? ['a', 'b', 'cd']
=======
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
