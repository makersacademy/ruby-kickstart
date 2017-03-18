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
  oddshash = {}
  (1..n).each do |odds|
    odds.odd? ? odds : next
    evensary = Array.new(odds) {|odds| odds + 1 unless (odds + 1).odd? }
    oddshash[odds] = evensary.compact
  end
  oddshash
end

# tests
#puts staircase(1)
#puts staircase(5)
