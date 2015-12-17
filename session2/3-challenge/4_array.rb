# Write a method named get_squares that takes an array of array
# and returns a sorted array containing only the array whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares
def get_squares array
	array.select { |n| array.include? n**2 }.sort
end
=begin
p get_squares [9]                      # => []
p get_squares [3,9,3]                    # => [3]
p get_squares [9,3,81]                 # => [3, 9]
p get_squares [25, 4, 9, 6, 50, 16, 5]
=end