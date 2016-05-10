# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(arr)
	arr2 = []
	arr.each do |x| arr2 << x if arr.include?(x**2)
	end
	p arr2.sort
end



	#def square!
	#	self.map {|num| num ** 2} 
	#end
	#new = []
	#new << arr.square!
	#print arr 
	#print new




