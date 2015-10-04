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

def spiral_access two_d, &block
  a, b, counter = 0, -1, 0
  list = []

  (two_d[a].length).times {                                       # first step across right
    b += 1
    list << two_d[a][b] }

  counter += 1

  while counter <= two_d.length-1

    (two_d.length-counter).times {                                # 0,4 -> 4,4 (down)
      a += 1
      list << two_d[a][b] }
    (two_d.length-counter).times {                                # 4,4 -> 4,0 (left)
      b -= 1
      list << two_d[a][b] }

    counter += 1

    (two_d.length-counter).times {                                # 4,0 -> 1,0 (up)
      a -= 1
      list << two_d[a][b] }
    (two_d.length-counter).times {                                # 0,0 -> 0,4 (right)
      b += 1
      list << two_d[a][b] }

    counter += 1

  end

  list.each(&block)

end
