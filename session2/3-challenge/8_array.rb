# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? array

  array.each_with_object(Hash.new(0)) do |word,counts|
    counts[word] += 1
    return true if counts[word] >= 3

  end

end

puts got_three? [1,2,2,2,3]
puts got_three? [1,2,3,3,3]
