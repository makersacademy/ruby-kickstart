numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Use each to iterate, and pass a block
# We'll cover blocks more later
sum = 0
numbers.each { |number| sum += number }
sum # => 45


# Use map to make a new array out of the elements
# returned by the block
squares = numbers.map { |number| number * number }
squares # => [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
numbers # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# will return a value for EACH element in array, even if the value is nil.
# will also modify original array if no new array is assigned so
# numbers.map { |number| number * number} will be the same as squares, but under the variable numbers

# iterate over the array two at a time INSTEAD OF ONE AT A TIME like .each
# becuase of the 2 in each_slice
result = []
numbers.each_slice(2) { |a, b| result << [a, b] }
result # => [[0, 1], [2, 3], [4, 5], [6, 7], [8, 9]]


# iterate over the array in groups of two
# hitting each group as we go
result = []
# below asks for the first five elements only, to shorten result
numbers[0..5] # => [0, 1, 2, 3, 4, 5]
numbers[0..5].each_cons(2) { |a, b| result << [a, b] }
result # => [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5]]
