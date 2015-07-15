# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)            # Defines method name and parameter
  elements.each_cons 3 do |a, b, c| # For each consecutive item, take 3 elements
    return true if a == b && b == c # Determines if a,b,c are the same
  end
  false                             # Else false
end

p got_three? [1, 2, 2, 2, 3]  # => true
p got_three? ['a', 'a', 'b']  # => false
p got_three? ['a', 'a', 'a']  # => true
p got_three? [1, 2, 1, 1]     # => false
