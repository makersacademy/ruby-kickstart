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

def mod_three(numbers)
  not_div_by_three = numbers.select { |n| n % 3 != 00 } # This creates a new array, excluding numbers divisable by 3
  remainder = not_div_by_three.map { |n| n % 3 } # This creates a further array of the remainder after dividing by 3
end

# def mod_three(numbers)      # This is the official method all on one line
#  numbers.select { |number| number % 3 != 0 }.map { |number| number % 3 }
# end

puts mod_three [0,1,2,3,4,5,6,7]
