# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (arr)
    thrice = false
    arr.each_with_index {|x,i| thrice=true if arr[i]==arr[i+1]&&arr[i+1]==arr[i+2]}
    thrice
  end
  