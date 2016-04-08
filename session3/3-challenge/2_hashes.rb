# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase num
  stair = Hash.new
  1.upto(num) do |x|
    if x.odd?
      stair[x] = []
      1.upto(x) do |y|
        stair[x] << y if y.even?
      end
    end
  end
  stair
end
