# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase n
	staircase = Hash.new
	(1..n).each do |i|
		if i%2 == 1
			staircase[i] = []
			(1..i).each{|j| staircase[i]<<j if j%2 ==0}
		end
	end 
	return staircase	
end




