# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? array
  three = false
  array.each_cons(3) do |a, b, c|
    three = true if (a == b && a == c)
  end
  three
end

puts got_three? [1, 2, 2, 2, 3]  # => true
puts got_three? ['a', 'a', 'b']  # => false
puts got_three? ['a', 'a', 'a']  # => true
puts got_three? [1, 2, 1, 1]