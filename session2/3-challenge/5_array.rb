# Write a function named mod_three which takes an array of numbers,
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three..
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

def mod_three(arry)
  # Creates new method that takes one argument,
  # an arry in the format [x, y].
  to_return = []
  # Cretes new variable which will store the
  # the remainder of each number in the array
  # when each number is divided by 3.
  arry.each {|x| to_return << (x % 3) if x % 3 != 0}
  # Runs block of code on each item in the array,
  # i.e. 'x'.
  #
  # The block is as follows:
  # (1) is x divided by 3 is not equal to 0?
  # (2) if so, add the the remainder of x divided
  #     by three to the to_return array

  to_return
  # Returns the final value of the new array after
  # the above steps have completed.
end