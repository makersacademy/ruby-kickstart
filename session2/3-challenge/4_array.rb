# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares arr
output = []

  if arr.length <= 1
    output
  else
    output = arr.select { |x| arr.include?(x ** 2)}
  end

output.sort
end

get_squares [9]
get_squares [9,3]
get_squares [9, 3, 81]
get_squares [25, 4, 9, 6, 50, 16, 5]
