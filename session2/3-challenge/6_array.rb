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
  prime_check = true
  char_num = string_array.join.length
  if char_num == 0
    prime_check = false
  end
  if char_num == 1
    prime_check = false
  end
  check_array = (2..(char_num/2)).to_a
  if prime_check == true
  check_array.each do |divisor|
    if char_num % divisor == 0
      prime_check = false
    end
    end
  end
    prime_check
end
