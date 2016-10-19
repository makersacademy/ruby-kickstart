# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  #check the array using each consecutive
array.each_cons(3) do |a, b, c|
  #checks if a is equal to b, and if b is equal to c
  if a == b
    if b == c
      #returns true if so
      return true
    end
  else
    #returns false if not
    false
  end
end
end
