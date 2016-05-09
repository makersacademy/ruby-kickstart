# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array.
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(num)
  # Creates a new method that takes one argument
  # 'num', which will be an array in the format
  # get_squares [a, b].

  to_return = []
  # Creates a new variable 'to_return' and assigns
  # it an empty array

  num.each {|x| to_return << x if num.include?(x**2)}
  # Takes each number in the array and runs the block
  # of code enclosed inside the {}.
  #
  # That block takes one parameter, 'x', where 'x' is each
  # element in the "num" array.
  #
  # The block says for each element in the array ('x'):
  #
  # (1) take the square of that element "(x**2)"
  # (2) does the "num" array also include that square
  #     ("num.include?(x**2)")?
  # (3) if the "num" array does also include the square of x
  #     then add x to the empty array "to_return"

  to_return.sort
  # The .sort method takes the final array of squares and
  # sorts it into acending order, e.g. [9, 3] => [3, 9].

end


