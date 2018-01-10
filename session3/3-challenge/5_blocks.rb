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
def spiral_access two_d_arr, &block
	arr = two_d_arr
	n = arr.length
	if n == 0 || arr[0].length == 0
		return
	elsif n == 1
		block.call(arr[0][0])
		return
	else
		new_arr = []
		arr[0].each {|num| new_arr << num}
		arr[1..n-2].each {|array| new_arr << array[n-1]}
		arr[n-1].reverse.each {|num| new_arr << num}
		arr[1..n-2].reverse.each {|array| new_arr << array[0]}
		arr.delete_at 0
		arr.delete_at(n-2)
		arr.map! do |array| 
			array[1...n-1]
		end
		new_arr.map(&block)
		spiral_access arr, &block
	end
end


