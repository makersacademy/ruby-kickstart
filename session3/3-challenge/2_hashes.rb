# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}



def staircase(n)
  hash = Hash.new {|hash, key| hash[key] = [] }      # => {}
  (1..n).each{|number| hash[number] if number.odd?}  # => 1..5
  hash.map{|key, value| hash[key] = even_nums(key)}  # => [[], [2], [2, 4]]
  hash                                               # => {1=>[], 3=>[2], 5=>[2, 4]}
end                                                  # => :staircase

def even_nums(n)
  (1...n).map{|x| x if x.even?}.compact  # => [], [2], [2, 4]
end                                      # => :even_nums

staircase(5)  # => {1=>[], 3=>[2], 5=>[2, 4]}
