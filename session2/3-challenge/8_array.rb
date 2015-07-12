# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(a)
  a.each {|num| if num > 3 puts true}
end

got_three?([1, 2, 2, 2, 3])
got_three?(['a', 'a', 'b'])
got_three?(['a', 'a', 'a'])
got_three?([1, 2, 1, 1])