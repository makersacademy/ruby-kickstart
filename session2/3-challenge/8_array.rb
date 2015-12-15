# Given an array of elements, return true if any element shows up three times in a row
#
def got_three? array
  counter = []
  result = false
  array.each do |c|
    if counter[0] == c
      counter[1] += 1
    else
      counter[0] = c
      counter[1] = 1
    end
    if counter[1] == 3
      result = true
    end
  end
  result
end


# Examples:
got_three? [1, 2, 2, 2, 3]  # => true
got_three? ['a', 'a', 'b']  # => false
got_three? ['a', 'a', 'a']  # => true
got_three? [1, 2, 1, 1]     # => false
