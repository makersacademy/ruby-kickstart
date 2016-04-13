# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.

def reverse_map(*numbers, &block)

  new = []
  numbers.reverse!.each {|num| new << block.call(num) }
  return new
end


#
#reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

