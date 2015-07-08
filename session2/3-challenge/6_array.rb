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

def prime_chars? (strings_array)

  len_sum, divisibles, result = 0 , [2,3,5,7,11,13,17,19,23,29], []
  strings_array.each { |characters| len_sum += characters.length } #counts the strings length of each value in the array and updates result of len_sum
  return false if len_sum == 1
  #number is prime if the only integers that can divide it with no remainder are 1 and itself.
  divisibles.each { |divisible_num| result << (len_sum % divisible_num == 0 && divisible_num != len_sum) }
  !result.any?
  #print "\n ANY trues?? #{result.any?}\n Result array is: #{result}"
end
#prime_chars? (["b", "p", "2", "ibPe", "XPP", "M", "Pi924kH", "f1l", "OC", "it", "JK", "vEnc", "qra", "sBST", "ujw", "AyNm3PBb1", "ubOqh5rGDOpg1UrMi12ol", "JqE530G", "MfPdCK1Qpd", "lK", "J", "vX3", "z", "5NUzFTwU6f", "Nd", "9xSzu", "qJxzYz4LQL", "AW", "EbnL", "J", "KJS", "3u", "gXm9d", "s91glmz1", "G", "5n3", "Y", "6B", "hg0i", "lo", "HXbE", "RuBv", "3"] )