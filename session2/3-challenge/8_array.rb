# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
  arr.each_with_index do |e, i|
    if (i > 0) && (i < arr.length-1)
      return true if (e == arr[i-1]) && (e == arr[i+1])
    end
  end
  false
end

