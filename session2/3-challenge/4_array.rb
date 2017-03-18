# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares array
	new_array = []
	array.each do |number|
	if array.include? number**2 
	new_array << number
	end
end 
	return new_array.sort 
end 



print get_squares [2,4,81,9,13,6,36]


# We need to return only the numbers that have their squared value in the array as well



