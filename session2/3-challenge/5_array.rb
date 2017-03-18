# Write a function named mod_three which takes an array of numbers,
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
#
# EXAMPLES:
# mod_three [0]  # => []
# mod_three [1]  # => [1]
# mod_three [2]  # => [2]
# mod_three [3]  # => []
# mod_three [4]  # => [1]
# mod_three [5]  # => [2]
# mod_three [6]  # => []
# mod_three [7]  # => [1]
#
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]

def mod_three array
  new_array = []                            # => []
  array.select {|n| n % 3 !=0}.each do |i|  # => [1, 2, 4, 5, 7]
    new_array << i%3                        # => [1], [1, 2], [1, 2, 1], [1, 2, 1, 2], [1, 2, 1, 2, 1]
  end                                       # => [1, 2, 4, 5, 7]
  new_array                                 # => [1, 2, 1, 2, 1]
end

bingo = [0,1,2,3,4,5,6,7]  # => [0, 1, 2, 3, 4, 5, 6, 7]

mod_three bingo  # => [1, 2, 1, 2, 1]
