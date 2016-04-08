# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares


def get_squares(numbers)
	numbers.select {|n| numbers.include? n*n}.sort
end

# this test passes on rake but I can't get it to run otherwise, due to wrong number of arguments 
# if you have more than one argument called, which you need to be able to run the block..
# then the method's paramater - which only takes one param - is out of sync.  Should include * in method's param?
# or else how to say that param is an array...?  


