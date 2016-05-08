# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
 
  def every_other_char
  	output = ""
  	each_char.with_index do |x, i|
  		output << x if i.even?
  	end
	output
  end

end
