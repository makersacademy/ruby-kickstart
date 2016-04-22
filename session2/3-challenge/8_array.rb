# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(test_it)
  count = 0
  result = false
  while count < test_it.length - 2
    if (test_it[count] == test_it[count + 1]) && (test_it[count + 1] == test_it[count + 2])
      result = true
      break
    else
      result = false
    end
    count += 1
  end
  result
end

# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
