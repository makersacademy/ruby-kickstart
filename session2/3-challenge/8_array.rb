# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

 def got_three? array
   array.each.with_index{|x,i| return true if (x == array[i+1] && x == array[i+2])} # compare each element with current, current+1, current+2, if all 3 elements are equal return true
 return false
 end