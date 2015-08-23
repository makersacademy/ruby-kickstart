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

def mod_three (numbers)
                                                              # .select looks for numbers which remainder is different than 0
  numbers.select { |num| num % 3 != 0 }.map { |num| num % 3 } # we want to save in the new array the actual remainders and not the number, so:
                                                              # .map creates a new array containing the values of num % 3
end

puts mod_three [0,1,2,3,4,5,6,7]
