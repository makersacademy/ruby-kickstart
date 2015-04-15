# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""



class String

	def every_other_char
		output =''
		chars.each_with_index.map do |item,idx|
			output << item if idx %2 ==0
		end
		output
	end
  
end

"abcdefg".every_other_char  # => "aceg"
"".every_other_char         # => ""