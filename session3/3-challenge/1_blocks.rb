# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#


def reverse_map(*array,&block)
	array.reverse.map(&block)
end
