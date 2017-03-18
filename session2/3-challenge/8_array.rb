# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def three_in_row(array)
    for i in (0...array.length)
        if array[i]==array[i+1] && array[i]== array[i+2]
            return true
        end
    end
    return false
end

puts three_in_row([2,1,1,1])