# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

#define the method, and list optional elements, and a block of code (undefined in this case)
def reverse_map(*elements, &block)
  #reverse the order of the elements received, and map it, passing it in to the block
  elements.reverse.map(&block)
end
