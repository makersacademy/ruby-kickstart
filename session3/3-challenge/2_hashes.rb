# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase num
	hash = {}
	1.upto num do |size|
		next if size.even?
		all = Array.new(size) { |i| i + 1}
		even = all.select { |i|   i.even?}
		hash[size] = even
	end
	hash
end

=begin
print staircase 1  # => {1 => []}
print staircase 2  # => {1 => []}
print staircase 3  # => {1 => [], 3 => [2]}
print staircase 4  # => {1 => [], 3 => [2]}
print staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
=end