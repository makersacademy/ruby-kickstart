# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

=begin  The below worked for 5 out of the 6 tests. It failed the last test. I can see that what my reults have been duplicated compared to the correct answer.
def get_squares(array)
	squares =[]
	if array.length==1
		squares
	else 
		array.each do |x|
			array.each do |y|
				if Math.sqrt(y)==x
					squares << x	
				end
			end
		end
		squares.sort
	end
end
=end

def get_squares(array)
  array.select { |n| array.include? n*n }.sort
end