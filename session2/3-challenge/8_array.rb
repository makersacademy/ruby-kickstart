# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false


def got_three?(string)
    threeinarow = false
  string.each_with_index do |thing, index|
        if string[index] == thing && string[index+1] == thing && string[index+2] == thing
        threeinarow = true
        end
    end
    return threeinarow

end 
