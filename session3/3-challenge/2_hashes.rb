# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(integer)
  odd_arr = []
  (1..integer).map do |i|
    if i.odd?
      odd_arr << i
    end
  end
  my_hash = Hash.new

  odd_arr.each {|i| my_hash[i] = []}

  odd_arr.each do |i|
    (1..i).each do |n|
      if n.even?
        my_hash[i] << n
      end
    end
  end
return my_hash
end
