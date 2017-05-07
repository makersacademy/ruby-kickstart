# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
  total = 0
  last = arr.first
  arr.each do |x|
    if x == last
      total += 1
      return true if total == 3
    else
      last = x
      total = 1
    end
  end
  false
end
