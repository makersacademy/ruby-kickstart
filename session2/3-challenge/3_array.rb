# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	output = ""
  	for i in (0...length).step(2) do
	  output << self[i]  		
  	end
  	output
  end 
end