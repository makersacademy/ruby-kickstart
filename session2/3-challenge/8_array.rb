# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_threee?(arr)
  count = 1
  prev = nil
  arr.each do |value|
    if value == prev
      count += 1
      return true if count == 3
    else
      count = 1
    end
    prev = value
  end
  false
end

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
