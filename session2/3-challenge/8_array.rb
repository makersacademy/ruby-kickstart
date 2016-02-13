# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	array.each_cons(3) {|a, b, c| return true if a == b && b == c} #.each_cons method iterates the given block for each array of consecutive <n> elements, so in this case we have 3 elements we want to iterate
end

