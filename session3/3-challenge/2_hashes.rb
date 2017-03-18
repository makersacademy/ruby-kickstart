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
  all_numbers = (1..number)
  hash = {}
  all_numbers.each do |num|
    evens_up_to_num = all_numbers.select {|x| x.even? && x < num}
      hash.store(num, evens_up_to_num) if num.odd?
  end

  # hash.each_key do |key|
  #   evens = all_numbers.select {|x| x.even? && x < key}
  #   hash[key] = evens
  # end

  hash
end

puts staircase(12)
