# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
two_d = [
  [ 1,  2,  3,  4, 5],
  [16, 17, 18, 19, 6],
  [15, 24, 25, 20, 7],
  [14, 23, 22, 21, 8],
  [13, 12, 11, 10, 9],
]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


#using https://gist.github.com/wikiti/f367f9bbced61957a077

def spiral_access(user_matrix, &block)
  # Copy the matrix (optional) and prepare the output array.
  output = []

  # Lambdas to execute depending on the current case. In summary, they will do the following:
  # top    -> remove the first array, which is the first row.
  # right  -> for each row, remove the last element (last column) and return all of them packed (map).
  # bottom -> remove the last array, which is the last row. The result must be reversed.
  # left   -> for each row, remove the first element (first column) and return all of them packed (map). The result must be reversed.
  cases_actions = {
    top:    lambda{ user_matrix.shift                       },
    right:  lambda{ user_matrix.map { |f| f.pop }           },
    bottom: lambda{ user_matrix.pop.reverse                 },
    left:   lambda{ user_matrix.map { |f| f.shift }.reverse }
  }
  # `cases` will iterate the above hash keys like following: top, right, bottom, left, top, right, ...
  cases = cases_actions.keys.cycle

  # Repeat until the matrix is empty (this will call the lambdas from the hash of above).
  output += cases_actions[ cases.next ].call() until user_matrix.empty?

  # Return output array.
  output.map(&block)
end




