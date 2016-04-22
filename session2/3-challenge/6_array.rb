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

=begin
def prime_chars?(str)
  str.each_char do |char|
    str_length = char.length.to_i
    if str_length % 1 == 0 && str_length % str_length == 0
      true
    else
      false
    end
  end
end

puts prime_chars?(3)
=end

=begin
def prime_chars?(str)
  if str.length.to_i % 1 == 0 && str.length % str.length == 0
    true
  else
    false
  end
end

puts prime_chars?(["abcd"])
=end

def prime? num
  if num < 2
    return false
  elsif num > 2
    for d in 2...num
      return false if num % d == 0
    end
  end
  return true
end

def prime_chars? array
  new_string = array.join('')
  num = new_string.length
  prime? num
end