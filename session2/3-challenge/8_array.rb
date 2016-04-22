# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(test_array)
  test_array.each do |element|
    i = 0
    test_array.each do |compare|
      if element == compare
        i += 1
      else
        i = 0
      end
      if i == 3
        return true
      end
    end
  end
false
end
