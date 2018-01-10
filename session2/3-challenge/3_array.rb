# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	str_arr = self.split('')
  	return_str = ""
  	self.size.times do |index|
  		if index.even? then return_str << str_arr[index] end
  	end
  	return_str
  end  
end
