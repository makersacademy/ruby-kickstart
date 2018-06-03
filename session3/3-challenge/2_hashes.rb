# Given a non negative integer, return a hash whose keys are all the odd non negative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(n)
    nums = Hash.new
    (1..n).to_a.reject { |x| x.even? }.map { |x| nums[x] = (1..x).to_a.reject { |y| y.odd? } }
    nums
  end
  