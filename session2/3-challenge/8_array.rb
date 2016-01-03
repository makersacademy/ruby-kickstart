# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)
  elements.each_cons(3) do |a, b, c|
    return true if a == b && b == c
    end
	false
end

# why won't this accept an if else statement, when I include else, it fails... 
# is it that it's a given that if it's not true, it is false
# so only include else statement if another code is to be run (if that else condition is met)...?