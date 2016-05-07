# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(array)

  squares = array.map {|item| item * item} # gives an array of the square values
  in_both = squares & array # returns elements that feature in both arrays
  selects = in_both.map {|x| Math.sqrt(x).to_i} # finds the square root of those elements
  array.select {|x| selects.include?(x)}.sort # selects all the matching elements in the original array

end

