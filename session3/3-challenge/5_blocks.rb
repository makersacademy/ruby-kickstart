# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(two_d, iteration=0, &block)
y_max = two_d.size - 1
x_max = two_d.first.size - 1

return if x_max/2 < iteration || y_max/2 < iteration
# when x_max = 7, y_max = 7, iter_max = 3, return when iter == 4

# call block over each element in top row, left to right
iteration.upto (x_max - iteration) do |x|
  block.call two_d[iteration][x]
end

# down right column
(iteration + 1).upto (y_max - iteration) do |y|
  block.call two_d[y][x_max - iteration]
end

#bottom row, right to left
(x_max - 1 - iteration).downto (iteration) do |x|
  block.call two_d[y_max - iteration][x]
end

# up left column
(y_max - 1 - iteration).downto (iteration + 1) do |y| # iteration + 1 because we've called over the element at top left corner already
  block.call two_d[y][iteration]
end

spiral_access(two_d, iteration+=1, &block)
end
