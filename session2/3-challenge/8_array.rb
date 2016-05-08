# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
#      # => false

def got_three?(ary)
  for i in 0..ary.length-2
    if ary[i] == ary[i+1] && ary[i+1] == ary[i+2]
      return true
    end
  end
  return false
end
