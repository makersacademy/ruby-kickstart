# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

#check every 3 consecutive numbers
#see if they all match eachother
def got_three?(input)
	input.each_cons(3).detect {|a, b, c| a == b && b == c}
end