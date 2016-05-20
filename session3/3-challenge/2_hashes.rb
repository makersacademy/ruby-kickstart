# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase number
staircase = Hash.new([])
odd_ints = (1..number).to_a.select {|x| x.odd? }
even_ints = (1..number).to_a.select {|x| x.even? }
odd_ints.each do |odd_num|
	staircase[odd_num] = even_ints.select { |even_num| even_num < odd_num }
	end
	return staircase
end
