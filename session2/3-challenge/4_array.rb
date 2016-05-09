# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares


def get_squares(arr)
	new_arr = []
	arr.each { |index| new_arr << index if arr.include?(index * index) }
	new_arr.sort
end

# def get_squares(arr)
# 	new_arr = arr.each { |index| Math.sqrt(index) }
# 	new_arr.select { |index| index if index.to_i == index }
# 	new_arr.sort
# end

# STEVES COMMENTS
# I spent a long time trying to iterate the square root of each index and if the
# square root of a number appeared in the array, then extract it. I then tried to 
# do the square root of every number and push out only those that were 'whole' numbers
# but I could not find a way of abstracting only whole numbers (as they were all floats)
# and converting into integers didnt work. I then had to peek at a solution otherwise I 
# would not be able to move on. I have included my code above, but this will not work as
# the question isnt quite asking this, but it was fun to try it anyway.
