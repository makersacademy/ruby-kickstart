# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
class Array
	def sum
		sum = 0
		self.each {|num| sum += num}
		sum
	end
end

def got_three?(array)
	check_a = array.each_cons(3).to_a
	check_a.each do |ars|
		i = 0
		count  = 0
		while i<3
			if ars[i] == ars[0]
				count += 1
				i += 1
			else
				i += 1
			end
		end
		if count == 3
			return true
		end
	end
	return false
end
