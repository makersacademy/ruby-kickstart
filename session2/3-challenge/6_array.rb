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

def prime_chars?(string_array)
    
    single_string = ""
    
    string_array.each { |str| single_string << str }
    string_length = single_string.length
    
    if string_length == 0 || string_length == 1
        return_val = false
    elsif string_length <= 2
      return_val = true
    else
      for x in (2..string_length-1)
        if string_length % x == 0
          return_val = false
          break
        else
          return_val = true
        end
      end
    end
  return_val
end