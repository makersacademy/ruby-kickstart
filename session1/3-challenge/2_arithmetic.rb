# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1, 2)    # => 0.5
# arithmetic2(19, 10)  # => 5.0
# arithmetic2(-6, -7)  # => -3.5

def arithmetic2(a, b)
	if a < b
		puts (a/2).to_f #figure out why this doesn't work?
	elsif b < a
		puts (b/2).to_f #figure out why this doesn't work?
	else
		puts "Numbers are the same, enter 2 different numbers" 
	end
end

arithmetic2(1, 2)
arithmetic2(19, 10)
arithmetic2(-6, -7)