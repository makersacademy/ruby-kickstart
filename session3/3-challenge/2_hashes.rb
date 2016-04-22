# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase integer
  hash = Hash.new
  for n in 1..integer
    if n.odd?
      hash[n] = [] if hash[n] == nil
      for i in 2..n
        hash[n] << i if i > 0 && i.even?
      end
    end
  end
  hash
end
