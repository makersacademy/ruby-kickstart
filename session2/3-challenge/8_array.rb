# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  returned = false
  array.each_cons(3) { |new|
    if new.max == new.min 
      returned = true
    end
    }
returned
end

  # do the each_cons so you have [1,2,3] [2,3,4] 
  # then check if in any a = b = b
  #

