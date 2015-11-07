# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#

def prime_chars?(array_strings)
  sum_characters = array_strings.join('').length.to_i
  i = 1
  result = ""
  sum_characters.times do
    puts "#{sum_characters} is divisible by #{i}"
    result = true if i != sum_characters && % i == 0 
    result = false if sum_characters % i == 0
    i += 1
  end
  p result
end

# Examples of length three
prime_chars? ['abc']            # => true
prime_chars? ['a', 'bc']        # => true
prime_chars? ['ab', 'c']        # => true
prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
prime_chars? ['abcd']           # => false
prime_chars? ['ab', 'cd']       # => false
prime_chars? ['a', 'bcd']       # => false
prime_chars? ['a', 'b', 'cd']   # => false
