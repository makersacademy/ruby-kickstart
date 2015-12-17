# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
	arr.each_with_index do |val, index|
		if arr[index+1] == arr[index] && arr[index+2] == arr[index]
			return true
		else
		  false
		end
	end
	return false
end

p got_three? [1, 2, 2, 2, 3]  # => true
p got_three? ['a', 'a', 'b']  # => false
p got_three? ['a', 'a', 'a']  # => true
p got_three? [1, 2, 1, 1]     # => false