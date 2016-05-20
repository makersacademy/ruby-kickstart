# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
def got_three?(array)
three = array.each_cons(3).detect{|num,num2,num3| num == num2 && num2 == num3} 
three.nil? ? false : true
end
