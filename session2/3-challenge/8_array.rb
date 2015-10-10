# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
 result = []
 index = 0
 while index < array.length
  result.push(array[index]) if array[index] == array[index + 1] && array[index] == array[index + 2]
    index += 1
  end
result.length > 0
end