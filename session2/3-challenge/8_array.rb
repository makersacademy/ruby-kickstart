# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)
  counter = 1
  elements.each_cons(2) do |a, b|
    if a == b
      counter += 1
      break if counter == 3
    else
      counter = 1
      end
    end
  counter >= 3
end
