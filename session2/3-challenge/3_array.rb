# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	arr = ""
  	self.split("").each_with_index do |val, index| 
		if (index) % 2 == 0
			arr << val
		end
	end
	arr
  end
end