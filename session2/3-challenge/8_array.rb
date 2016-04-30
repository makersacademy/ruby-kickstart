# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
    result = true
    arr.each_with_index do |x, i| 
        if x == arr[i + 1] && x == arr[i + 2]
          result = true
          return p result
        else
          result = false
        end
    end
    result = false if arr = []
    p result
end


            
            