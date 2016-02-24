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




def rotate(a)
  rotated = (0..a.size-1).map do|colidx|
    a.map do|row|
      row[colidx]
    end.reverse
  end
  rotated
end

def spiral_access(two_d, &block)
  two_d = two_d.transpose
  spiral_access_recursive two_d, &block
end

def spiral_access_recursive (two_d, &block)

  two_d.delete_if{|row| row.all?{|e| e.nil?}}
  unless two_d.empty?
    two_d.map do |row|
      element = row.reverse!.pop
      block.call(element)
      row.reverse!
    end

    two_d = rotate(two_d)
    spiral_access_recursive two_d,&block
  end
end

#===============================================

# two_d = [[ 1,  2,  3,  4, 5],
#          [16, 17, 18, 19, 6],
#          [15, 24, 25, 20, 7],
#          [14, 23, 22, 21, 8],
#          [13, 12, 11, 10, 9]]
#
# two_d = [[1,2],
#          [4,3]]

two_d = [[1,2,3],
         [8,9,4],
         [7,6,5]]

# two_d = [[ 1 ,  2 ,  3 ,  4 ,  5 ,  6 ],
#         [ 20 , 21 , 22 , 23 , 24 ,  7 ],
#         [ 19 , 32 , 33 , 34 , 25 ,  8 ],
#         [ 18 , 31 , 36 , 35 , 26 ,  9 ],
#         [ 17 , 30 , 29 , 28 , 27 , 10 ],
#         [ 16 , 15 , 14 , 13 , 12 , 11 ]]



order = []
spiral_access two_d do |i|
  order << i
end

p order

