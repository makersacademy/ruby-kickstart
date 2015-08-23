# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares (numbers)
      # .select returns a new array containing all elements for which the given block returns a true value.
numbers.select { |num| numbers.include? num*num }.sort # look for numbers that return true to num * num
end

puts get_squares [25, 4, 9, 6, 50, 16, 5]
