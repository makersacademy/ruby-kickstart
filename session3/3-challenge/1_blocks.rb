# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]


def reverse_map(*input_elements, &block)

	total_elements = input_elements.count
	total_elements -= 1
	new_array = []

	total_elements.downto(0) do |i|
		new_array << block.call(input_elements[i])
	end

	new_array

end

