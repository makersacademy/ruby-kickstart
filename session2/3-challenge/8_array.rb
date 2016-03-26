# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
	arr.each_with_index{|val,index| return true if val == arr[index + 1] && val == arr[index + 2]}
	false
end

def got_three_JC_refactor?(arr)
	arr.each_cons(3) {|a, b, c| return true if a == b && b == c}
	false
end