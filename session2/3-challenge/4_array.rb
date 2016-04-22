# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#

# This time you will have to define the method, it's called: get_squares

def get_squares (ary)

	a = ary.select {|n| n if ary.include?(n*n)}

	a.sort

end

# puts get_squares [9]                      # => []
# puts get_squares [9,3]                    # => [3]
# puts get_squares [9,3,81]                 # => [3, 9]
# puts get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]
