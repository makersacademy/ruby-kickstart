# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(ary)
  ary.each_cons(3) do |a, b, c|
   return true if a == b && a == c
 end
end
ary = [1, 2, 2, 2, 3, 4]
got_three?(ary)