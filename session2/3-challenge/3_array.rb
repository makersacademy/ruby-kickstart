# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	result = ""
  	self.each_char.with_index do | ch, i|
   	result << ch if i % 2 == 0
  	end
  	result
  end
end