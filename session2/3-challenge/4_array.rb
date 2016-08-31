# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares


def get_squares(numbers)
#.select iterates through the numbers and select the number only if the block is true
#the block is looking to see if the num multipled by itself is included in the numbers array
#and if it is included, it selects it for a new array.
#the .sort on the end sorts the new array
	numbers.select {|num| numbers.include? num*num}.sort
end