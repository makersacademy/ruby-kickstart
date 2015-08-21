# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (a)
  l = a.length
  i = 0
  result = false
  while i < l - 2
    if a[i] == a[i+1] && a[i] == a[i+2]
      result = true
    end
    i = i + 1
  end
  result
end
