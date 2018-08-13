# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  array.each_cons(3) do |first_charac, second_charac, third_charac|
    return true if first_charac == second_charac && second_charac == third_charac
  end
return false
end