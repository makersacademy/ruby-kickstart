# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? arr
  head = nil
  count = 0

  arr.each do |x|
    if (x != head)
      head = x
      count = 1
    else
      count += 1
    end

    if (count == 3)
      return true
    end
  end

  return false
end

