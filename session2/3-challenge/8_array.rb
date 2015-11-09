# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

#def got_three?(numbers)
in a row!!!!!!
array.slice see notes
iterate through each slice

final = .each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
x = false
final.select { |k,v|  x = true if v == 3 }
if  x != true
	final.select { |k,v|  x = false if v != 3 }
end
x
#end