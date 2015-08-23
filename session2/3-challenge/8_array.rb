# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)
  elements.each_cons 3 do |a, b, c|     # iterates the given block for each array of consecutive <n> elements.
    return true if a == b && b == c     # return true when the condition is true (note this happens is inside the iterator)
  end
  false                                 # else return false
end

puts got_three? [1, 2, 1, 1]
