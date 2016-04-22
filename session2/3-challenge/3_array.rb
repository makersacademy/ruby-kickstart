# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	newstring = []
  	self.split(//).each_with_index do |char, ind|
  		newstring << char if ind % 2 == 0
  	end
  	newstring.join()
  end
  
end
