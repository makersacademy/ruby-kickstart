# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  count = 0
  array.each_with_index do |a, index|
    if count == 3
      return true
    end
    if a == a[index+1]
      count += 1
    else
      count = 0
    end
    return false
  end
end

def got_three?(array)
  array.each_cons(3) do |a, b, c|
    return true if a==b && b==c
  end
  return false
end
