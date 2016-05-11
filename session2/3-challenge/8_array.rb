# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(number)
	array = []
	number.each {|n| array << n}
	array.each_cons(3) do |a, b,c|
		if a == b && b == c && c == a
			return true 		
		end
	end
		return false
end

