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
if array == ([])
    return false
end
if array == ([''])
    return false
end

array2 = array.map {|x| (x.to_s.length) }
array3 = array2.inject(0) {|x,y| x + y}
n = array3.to_i
if n < 2
  return false

elsif
        Math.sqrt(n).floor.downto(2).each {|i| return false if n % i == 0}
    return true
else
    return false
    end
end