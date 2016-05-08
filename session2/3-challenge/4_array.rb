# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(input)
input.sort
squared = input.map {|x| x*x }
output = []
input.length.times.with_index do |x,i|
	if input.include?(squared[i])
		output << input[i]
	end
end
return output.sort
end


