# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
  retval = false
  result = []
  arr.each_cons(3) { |a, b,c| result << [a, b,c] }
result.length.times do
  result.each do |value|
    retval = value.uniq.length == 1 ? true : false
    return true if retval == true
  end
end
  retval
end
