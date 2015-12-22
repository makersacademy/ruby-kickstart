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

# array.each_index.select { |n| array.include? n % 3 == 1 }

def mod_three(array)
new_array = array.map { |n| n % 3 } #here you can use map instead of select to have the full array
new_array.reject { |n| n == 0 }  #it's fine no - time to rake it? yep
end
