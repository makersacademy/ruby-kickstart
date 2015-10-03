# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map *inputs, &block
	inputs.reverse.collect(&block)
end

#inputs alone is an array of the varied number of arguments inputted.
#inputs.reverse reverse the array elements of inputs.
#inputs.reverse.collect takes each element of the array and pass through the block.