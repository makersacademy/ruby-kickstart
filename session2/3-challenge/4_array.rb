# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(array_of_num)
	array_of_num.sort!
	answer = Array.new
	counter = 0
	if array_of_num.length < 2
		return answer
	end	

	while counter <= array_of_num.length - 1 do
		 if array_of_num.include?(array_of_num[counter] * array_of_num[counter])
		 	answer.push(array_of_num[counter])	
		 end
		counter += 1	
	end	
	return answer
end