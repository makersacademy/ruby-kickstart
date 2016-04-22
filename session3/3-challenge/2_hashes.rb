# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(int)
  retval = {}
  (int+1).times do |val|
    if (val.odd? && val > 0)
      retval[val] = [*0..val].select {|num| num.even? && num > 0}
    end
  end
  retval
end
