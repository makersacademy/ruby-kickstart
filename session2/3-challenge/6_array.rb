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

def prime_chars? (string_array)
  chars = string_array.join.size
require 'prime'
Prime.prime?(chars)
end
=begin
what I started doing before I found the lazy method:

def prime_chars? (string_array)
  chars = string_array.join.size

   digits = Math.sqrt(chars).floor
  for m in (2..digits)
    if (digits % m) == 0
      puts false
    else
      puts true
    end
  end
end


if square root of given number
conditions for prime numbers
1 -> must be a positive integer larger than 1
satisfy first condition: 2, 3, 4, 5, 6
2/2 = 2 || 2/1 = 2
3/3 = 1 || 3/1 = 3

2 -> when a prime number is divided by another positive integer
    the result will only be a positive integer when the prime number
    is divided by itself and the number 1

contradict conditions == not prime
4/2 = 2
6/3 = 2
6/3 = 3

divided by a positive integer other than itself or one, and still produces a positive integer


=end