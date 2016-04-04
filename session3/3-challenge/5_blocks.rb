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

ex = [
      [  1 ,  2 ,  3 ,  4 ,  5 ,  6 ],
      [ 20 , 21 , 22 , 23 , 24 ,  7 ],
      [ 19 , 32 , 33 , 34 , 25 ,  8 ],
      [ 18 , 31 , 36 , 35 , 26 ,  9 ],
      [ 17 , 30 , 29 , 28 , 27 , 10 ],
      [ 16 , 15 , 14 , 13 , 12 , 11 ], ]


def spiral_access(two_d, &block)
  
  order = []
  loop do 
    ary = two_d.shift
    break if ary.nil?
    order << ary
    two_d = two_d.transpose.reverse
  end
  order = order.flatten
  order.map(&block)

end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]



