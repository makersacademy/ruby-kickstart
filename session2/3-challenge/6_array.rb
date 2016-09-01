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

#1. find the total number of characters of all strings
#2. find out whether that number is prime - create a method in the Integer class
#3. to determine if a number is prime, we test up to the square root of the num
# firstly, create method for finding prime 
# no need to check 0 and 1 because they are not primes, so return false for these
# find the square root of the num (the num is 'self' as the method will be called on an object which will be the number)
# check from two up to the square root number by returning false if
# the number provided divided by any of the numbers selected have a remainder of 0
# else return true
# then create the method prime_chars? to use the new Integer method on the
# total characters of the array of strings added together

class Integer

  def prime?
   return false if self <= 1
   Math.sqrt(self).to_i.downto(2).each {|n| return false if self % n == 0}
   true
  end
end

def prime_chars?(strings)
	strings.join.length.prime?
end
	