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

def prime_chars?(strings_array)
  sum = 0
  new_array = []
  strings_array.join.split("").each {|x| sum += 1}
  if sum != 1 && (strings_array != [""] && strings_array != [])
  	(2..sum/2).map {|a| new_array << sum % a }
    !(new_array.include? 0) 
  else
  	false
  end
end
