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
	for i in 1..(num)
		if i % 2 == 1
			for x in 1..(i)
				hash[i] = x if x % 2 == 0
			end
		else
		end
	end
end

puts staircase 4

					
#tough one, can't work out how to crack this one




