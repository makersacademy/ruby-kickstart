# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)
  # Iterate the following block for each array of consectuive 3 elements
  elements.each_cons 3 do |a, b, c|
    # if a = b and b = c, return true
    return true if a == b && b == c
  end
  # otherwise return false
  false
end


=begin Without comments:

def got_three?(elements)
  elements.each_cons 3 do |a, b, c|
    return true if a == b && b == c
  end
  false
end


=end
