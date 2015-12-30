# Write a function named mod_three which takes an array of numbers,
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
#
# EXAMPLES:
# mod_three [0]  # => []
# mod_three [1]  # => [1]
# mod_three [2]  # => [2]
# mod_three [3]  # => []
# mod_three [4]  # => [1]
# mod_three [5]  # => [2]
# mod_three [6]  # => []
# mod_three [7]  # => [1]
#
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]

=begin 
1, Takes an array of numbers
2, returns a new array containing the remainder of the orig number / 3
3, skips any numbers that are divisible by 3

=end

def mod_three(numbers)
	return_array = []
	numbers.each do | n |
		next if n % 3 == 0
		return_array << n % 3
	end
	return_array
end