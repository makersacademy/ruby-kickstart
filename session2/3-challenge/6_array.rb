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

def prime_chars?(array_list)
  a=( array_list.each.map{|x| (x.length)}.inject(0){|total,z| total+z}) #getting sum of lengths of elements in array_list
  if [0,1].include?a #checking for primality 
    false 
  elsif [2,3].include?a 
    true 
  else 
    ( (2..(a/2)).to_a.map { |x| a%x}.include?0 )? false : true 
  end   

end 
prime_chars?(['a','bcdefg'])

