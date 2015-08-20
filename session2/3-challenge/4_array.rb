# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares array
	squares = []
	roots =[]
array.each do |variable|
	squared = variable * variable
	squares << squared
end
allsquares = array & squares
allsquares.sort
allsquares.each do |variable|
	root = Math.sqrt(variable)
	roots << root.to_i
end
puts roots.sort.uniq
end

# how about numbers.select { |n| numbers.include? n*n }.sort
