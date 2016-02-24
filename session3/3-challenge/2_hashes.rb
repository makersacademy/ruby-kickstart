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
	hash = Hash.new
	evens = []
	1.upto(num) do |i|
		evens = Array.new(i) {|n| n+ 1 }.select {|m| m.even?}
		hash[i] = evens if i.odd?
	end
	hash
end


# p staircase 9