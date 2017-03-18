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

def is_this_prime(n)
  n = n.to_i
  if n < 2
    return false
  elsif n == 2
    return true
  else
    for x in 2..(n - 1)
      if (n % x) == 0
        return false
      end
    end
    return true
  end
end

#require 'prime'
def prime_chars?(my_string)
  my_array = Array.new
  tot_char = 0
  my_string.each { |c| my_array << c }
  my_array.each { |x| tot_char += x.length }
#  tot_char.prime? ? true : false
  if is_this_prime(tot_char)
    return true
  else
    return false
  end
end
