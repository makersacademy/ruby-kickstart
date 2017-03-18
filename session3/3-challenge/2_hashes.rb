# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase n
  counts = Hash.new([])
  (1..n).each do |x|
    next if x.even?
    counts[x] = ((2..x).select{|x| x.even? })

    # (1..x).each do |y|
    #   y.even? ? counts[x] = y : next
    # end
  end
 counts
end
