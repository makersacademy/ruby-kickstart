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

def prime_chars? (array)
    count = array.join('')
    x = count.split('').count
    if x < 2
        return false
    elsif x == 2
        return true
    elsif
        for y in 2..(x - 1)
            if (x % y) == 0
                return false
            end
        end
    return true
    end
end

prime_chars? ['ab', 'c']  
prime_chars? ['ab', 'cd'] 