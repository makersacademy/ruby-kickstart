# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

#steps
	#set-up method so receive array of nums
	#set-up a map method on array so returns array which is reversed - possibly .reverse.map

def reverse_map(*nums, &block) #have to set multiple parameters to allow for 3 numbers, have to specify block as a proc so can be passed to a method
	puts nums.reverse.map(&block) #reverse array then map into new array based on block that is passed into it
end

reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
reverse_map(8, 9, 10) { |i| i * 2 }      # => [20, 18, 16]

#problems
	#struggling a bit to conceptually understand how blocks get passed into method and manipulated in method