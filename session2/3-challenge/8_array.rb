# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	answer = []
	array.each_with_index { |x, i| answer << x if array[i] == array[i +1] && array[i] == array[i +2] }		
	answer.count >= 1 ? true : false
end