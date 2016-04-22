# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
# go through array, if next item is equal to current then plus 1 to counter, if counter reaches 3 return true
def got_three?(array)
    counter = false
    (array.size-1).times do |index|
        counter = true if array[index] == array[index+1] && array[index] == array[index+2]
    end
    counter 
end
    