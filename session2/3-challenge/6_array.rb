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

def prime_chars?(array)
  string = array.join()
  c_length = (string.length)-1 # to compare actual length with below

    while string.length == 1 or c_length !=0 #string.length == 1 must be evaluated first because otherwise it will be overlooked in the case that length actually = 1
      return false if (string.length == 1) or (string.length % c_length == 0 && c_length != 1) #checking if not prime
      c_length -=1
    end
    return true #it's a prime
end
