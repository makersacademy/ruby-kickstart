# Write a function named mod_three which takes an array of numbers,
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
#
# EXAMPLES:

# p mod_three [0]  # => []
# p mod_three [1]  # => [1]
# p mod_three [2]  # => [2]
# p mod_three [3]  # => []
# p mod_three [4]  # => [1]
# p mod_three [5]  # => [2]
# p mod_three [6]  # => []
# p mod_three [7]  # => [1]
# p mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]


def mod_three(numbers)
  return_arr = []
  numbers.map {|i| return_arr.push i%3 if i % 3 != 0}
  return_arr
end
