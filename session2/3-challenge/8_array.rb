# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? arr
  c = false
  l = arr.length
  (0...l).each do |x|
    if arr[x] == arr[x+1]
      if arr[x+2] == arr[x+1]
        c = true
      end
    end
  end
  c
end
