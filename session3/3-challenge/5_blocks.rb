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

def spiral_access(arr, &block)
  #count how many rows = e.g. length of first
  if arr.length > 1
    rows = arr.length - 1
    columns = arr[0].length - 1
    #puts rows, columns
    #count how many columns, e.g. in the first array
    #create a placeholder
    var_arr = []
    #first go across the top
    var_arr= arr[0]
    var_arr.each {|nr| block.call(nr)}
    # then take the last element in each array
    (1..(columns-1)).each do |x|
      var_arr = arr[x]
      block.call(var_arr.delete_at(columns))
    end
    #then go reverse along the last array
    var_arr = arr.delete_at(-1).reverse
    var_arr.each {|nr| block.call(nr)}
    #puts var_arr.join(' ')
    #then take the first elements up till n2
    (columns-1).downto(1) do |x|
      var_arr = arr[x]
      #puts var_arr.join(' ')
      block.call(var_arr.delete_at(0))
    end
    arr.delete_at(0)
    #puts arr.join(' ')
    spiral_access(arr,&block)
  elsif arr.length == 1
    arr[0].any? ? block.call(arr[0][0]) : arr[0]
  else
    arr

  end

  #then call it again for the rest
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
puts order.join(' ')

order = []
spiral_access [] do |i|
   order << i
end
puts order.join(' ')

array1 = [[]]
puts array1.length