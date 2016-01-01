# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def three_times? (a)

	a.each_cons (3) {|a,b,c| return true  if (a == b) && (a == c)} 
false
end

c = [3, 4, 5, 2, 1, 6, 6, 6]

puts three_times? (c)