# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(arg)
  new_hash = {}
  1.upto(arg) do |odd_num| next if odd_num.even?
  mix_keys_value = Array.new(odd_num) {|el| el + 1}
  values = mix_keys_value.select {|ev| ev.even?}
  new_hash[odd_num] = values
  end
  new_hash
end