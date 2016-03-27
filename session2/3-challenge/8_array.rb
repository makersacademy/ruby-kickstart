# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)              #defines the method called got_three and accepts one parameter
  elements.each_cons 3 do |a, b, c|   #takes the array and loops for each consecutive block
  return true if a == b && b == c     #checks if a and b are the same AND b and c are the same
end                                   #ends the loop
  false                               #returns flase if condition not met
end                                   #ends the method


=begin JOSH'S SOLUTION
def got_three?(elements)
  elements.each_cons 3 do |a, b, c|
    return true if a == b && b == c
  end
  false
end
=end