# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def evens int
	even_arr = []
	1.upto(int) {|num| if num.even? then even_arr.push(num) end}
	even_arr
end

def staircase int
	num_hash = Hash.new
	1.upto(int) do |num|
		if num.odd? then num_hash[num] = evens(num) end
		end
	num_hash
end



