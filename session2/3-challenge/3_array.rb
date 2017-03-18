# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
 def every_other_char
  	if self.to_s == ""
  		return ""
  	end
  	array = []
  	self.split("").each_with_index { |i, index| array << i if index % 2 == 0 }
  	array.join
 end 
end
