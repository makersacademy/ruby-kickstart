# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char()
  	mystringarray = chars.select.with_index{|_,i| (i) % 2 == 0}
	mystringarray.join("")
  end
  
end
