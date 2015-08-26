# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# p problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# p problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# p problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false

def problem_14 *args
	return 0 if args == []
	return count_clumps(args) if args.last.is_a?(Integer)
	if args.last[:problem] == :count_clumps
		args.pop
		return count_clumps(args)
	elsif args.last[:problem] == :same_ends
		args.pop
		return same_ends(args)
	else
		return count_clumps(args)
	end
end

def count_clumps *num_array
	num_array = num_array.flatten
	clumps = 0
	for i in 1...num_array.length
		clumps += 1 if num_array[i-1] == num_array[i] && num_array[i] != num_array[i+1]
	end
	clumps
end

def same_ends *num_array
	num_array = num_array.flatten
	n = num_array.slice!(0)
	return true if n == 0
	return false if n > num_array.length
	return num_array[0..n-1] == num_array[num_array.length - n..num_array.length-1]
end



#p method1

#p problem_14(1, 1, 2, 1, 1)
# p same_ends  [1,1,2,3,4,4,1,2,3]
#p same_ends [2,1]

# def same_ends1(n, *params)
# 	p params
# 	p params[0,n]
# 	p params[-n,n]
#   #params[0, n] == params[-n, n]
#   return nil
# end

#p same_ends1 2,   5, 6, 45, 99, 13, 15, 6

# p problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# p problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# p problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1

# p problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# p problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# p problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false



# def count_clumps num_array
# 	clumps = 0; same = true
# 	for i in 1...num_array.length
# 		if num_array[i-1] == num_array[i]
# 			same = true
# 			num_array[i-1] = 0
# 		else
# 			same = false
# 		end
# 	end
# end




