# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#


def match_maker (condition, *input)
	result = []
	if condition == true
		input.each_slice(2) { |i, j|
			if i == !!j 
				result << false 
			else
				result << true 
			end
		}
	elsif condition == false
		input.each_slice(2) { |i, j|
			if i == !j
				result << true 
			else
				result << false 
			end
		}
	end
	result
end


