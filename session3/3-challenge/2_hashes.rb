# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(number)
  result = {}
  1.upto(number) do |i|
    if i.odd?
      aux = []
      1.upto(i) do |j|
        aux << j if j.even?
      end
      result[i] = aux
    end
  end
  result
end

