# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_rearrange1 array
	#rearrange 2d array of arrays square into a single spiral order arranged array. 
	if array.flatten.length == 1
		result = []
		return result << array.flatten[0]
	end

	ordered_array = []
	n = array.length - 1
	x = 0; y = 0
  while true
	while true
		if array[x][y] != []
			ordered_array << array[x][y]
			array[x][y] = []
		else
			break
		end	
		if y < n && array[x][y+1] != []
			y += 1
		end
	end

	x += 1
	
	while true
		if array[x][y] != []
			ordered_array << array[x][y]
			array[x][y] = []
		else
			break
		end
		if x < n && array[x+1][y] != []
			x += 1
		end
	end

	y -= 1

	while true
		if array[x][y] != []
			ordered_array << array[x][y]
			array[x][y] = []
		else
			break
		end
		if y > 0  && array[x][y-1] != []
			y -= 1
		end	
	end

	x -= 1

	while true
		if array[x][y] != []
			ordered_array << array[x][y]
			array[x][y] = []
		else
			break
		end
		if x > 0  && array[x-1][y] != []
			x -= 1
		end	
	end

	y += 1

	if array[x][y] == []
		break
	end 
  end

	return ordered_array
end


def spiral_rearrange array
	#rearrange 2d array of arrays square into a single spiral order arranged array. 
	return [] if array == []
	ordered_array = []
	return ordered_array << array.flatten[0] if array.flatten.length == 1
	n = array.length - 1; x = 0; y = 0
  	while true
		while true
			if array[x][y] != []
				ordered_array << array[x][y]
				array[x][y] = []
			else
				break
			end	
			y += 1 if y < n && array[x][y+1] != []
		end
		x += 1
		while true
			if array[x][y] != []
				ordered_array << array[x][y]
				array[x][y] = []
			else
				break
			end
			x += 1 if x < n && array[x+1][y] != []
		end
		y -= 1
		while true
			if array[x][y] != []
				ordered_array << array[x][y]
				array[x][y] = []
			else
				break
			end
			y -= 1 if y > 0  && array[x][y-1] != []
		end
		x -= 1
		while true
			if array[x][y] != []
				ordered_array << array[x][y]
				array[x][y] = []
			else
				break
			end
			x -= 1 if x > 0  && array[x-1][y] != []
		end
		y += 1
		break if array[x][y] == []
  	end
	return ordered_array
end

=begin
p spiral_rearrange([])
p spiral_rearrange([[1,2,3,4],
					[12,13,14,5],
					[11,16,15,6],
					[10,9,8,7]])

p spiral_rearrange([
   [ 1,  2,  3,  4, 5],
   [16, 17, 18, 19, 6],
   [15, 24, 25, 20, 7],
   [14, 23, 22, 21, 8],
   [13, 12, 11, 10, 9],
 ])
=end

#p spiral_rearrange([
#   [ 1,  2,  3,  4, 5, 6],
#   [20, 21, 22, 23, 24, 7],
#   [19, 32, 33, 34, 25, 8],
#   [18, 31, 36, 35, 26, 9],
#   [17, 30, 29, 28, 27, 10],
#   [16, 15, 14, 13, 12, 11],
# ])


#code to add elements of array to ordered_array in the correct spiral order
#this is a kyu 4 kata from Codewars :), I was planning to do the kata, now
#I am definitely doing it.

def spiral_access array, &block
	if array == [] || array == [[]]
		return
	else
		ordered_array = spiral_rearrange(array)
		ordered_array.each(&block)
	end
end

#p spiral_access [[45]] {|x| puts x * 100}
#p spiral_rearrange [[45]]


#two_d = [[ 1,  2,  3,  4, 5],[16, 17, 18, 19, 6],[15, 24, 25, 20, 7],[14, 23, 22, 21, 8],[13, 12, 11, 10, 9]]

#spiral_access [[ 1,  2,  3,  4, 5],[16, 17, 18, 19, 6],[15, 24, 25, 20, 7],[14, 23, 22, 21, 8],[13, 12, 11, 10, 9]] {|x| puts x * 100}
#puts spiral_access [] {|x| puts x * 100}
 




