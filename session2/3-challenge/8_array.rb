# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  r = []
  r_2 = []
  array.each_cons(2) { |a, b| r << [a, b] }
  r.each_cons (2) {|e1, e2| r_2 << (e1 == e2)}
  r_2.include? true
end
