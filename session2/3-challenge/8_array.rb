# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
	new_array = []
	array.each_cons(3) { |a, b, c| new_array << [a, b, c]}
	answer = 0
	array.uniq.each { |x| new_array.include?([x, x, x]) ? answer += 1 : answer+= 0 }
	answer >= 1 ? true : false
end

print got_three?([1,2,3,1,1,1,0])