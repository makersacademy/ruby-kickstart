# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase (num)
  output = {}
  1.upto num do |index|
    next if index.even?
    all = Array.new(index) {|i| i + 1}
    evens = all.select {|i| i.even?}
    output[index] = evens
  end
  output
end




