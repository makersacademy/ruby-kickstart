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

def spiral_access(arr,&block)

      arr[0].each{|i| yield i}
      arr.delete(arr[0])
      return if arr.empty?
      arr.transpose[-1].each{|i| yield i}
      arr.map!.with_index{|x| x[0..-2]}
      return if arr.empty?
      arr[-1].reverse.each{|i| yield i}
      arr.delete(arr[-1])
      return if arr.empty?
      arr.transpose[0].reverse.each{|i| yield i}
      arr.map!.with_index{|x| x[1..-1]}
      return if arr.empty?

      spiral_access(arr,&block)
end

two_d = [
   [ 1,  2,  3,  4, 5],
   [16, 17, 18, 19, 6],
   [15, 24, 25, 20, 7],
   [14, 23, 22, 21, 8],
   [13, 12, 11, 10, 9],
 ]
 order = []
spiral_access two_d do |i|
   order << i
end

p order




