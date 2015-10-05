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

def spiral_access array, &block

  return if array.flatten == []

  x, y = 0, 0

  while x < array.length
    block.call array[y][x]
    x += 1
  end

  x -= 1

  while y < (array.length - 1)  
    y += 1
    block.call array[y][x]
  end

  while x > 0                
    x -= 1
    block.call array[y][x]
  end

  y -= 1      

  while y > 0                
    block.call array[y][x]  
    y -= 1
  end
  
  array.pop
  array.delete_at 0

  array.each do |sub_arr|
    sub_arr.pop
    sub_arr.delete_at 0
  end

  spiral_access array, &block

end

  


