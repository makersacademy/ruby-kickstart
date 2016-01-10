# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.

def staircase num
  hash = Hash.new { |this_hash, key| this_hash[key] = Array.new }
  (1..num).each do |x|
    hash[x] = (1..x).select{|y| y.even?} if x.odd?
  end
  hash
end



  #character_counts = Hash.new { |this_hash, key| this_hash[key] = 0 }

#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}




