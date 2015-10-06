# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps

def problem_14 (*elements)
	problem = elements.pop[:problem] if elements.last.is_a? Hash
	problem ||= :count_clumps

	return count_clumps(*elements) if problem == :count_clumps
	return same_ends(*elements) if problem == :same_ends
end

def count_clumps (*nums)
	clumps = 0
	previous = nil 
	twoago = nil
	nums.each do |number|
		clumps += 1 if (number == previous) && (previous != twoago)
		twoago = previous
		previous = number
	end
	clumps
end

def same_ends (n, *nums)
	return true if n == 0 
	a = nums.length 
	b = nums[a-n..a]
	nums[0..n-1] == b
end


# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
#puts problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
#print problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
#print problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
#tprint problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
#print problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false



