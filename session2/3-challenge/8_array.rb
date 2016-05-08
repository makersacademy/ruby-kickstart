# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(ary)
   
   result = false
   
   for i in 0..(ary.length-2)
       result = (ary[i] == ary[i+1])&&(ary[i] == ary[i+2])
       break if result
   end
    
    result
    
end