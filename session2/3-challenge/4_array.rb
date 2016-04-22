# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares array
	newArray = []
	array = array.sort
	array.each do |x|
		array.each do |y|
			if x**2 == y
				newArray.push(x)
				break #need to break out of this loop as soon as a square is found, otherwise duplicates will occur
			end
		end
	end
	newArray

end

#puts get_squares [9,3,81]