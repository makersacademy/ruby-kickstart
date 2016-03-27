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


class Integer                         #Opens the Integer class
  def prime?                          #Defines the method
    return false if self < 2          #Escapes the method if the Int (self) is less than 2
    2.upto Math.sqrt(self) do |n|     #Starts at 2 and goes up to the squareroot of the Int (Self) and yields value to n
      return false if self % n == 0   #Escapes method with false value if the mod leaves 0
    end                               #Ends the loop
    true                              #Returns true if contdition not met
  end                                 #Ends the method
end                                   #Ends the class

def prime_chars?(strings)             #Method to accept the stirng as a param
  strings.join.length.prime?          #Joins the strings together works out the length and passes the result to the method above
end                                   #Ends the method


=begin JOSH'S SOLUTION
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