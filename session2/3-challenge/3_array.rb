# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
	return "" if self==""
	i = 1 
	word = ""
	array = self.split("")
	array.each do |e|
		if i%2 != 0
			word += e 
			i += 1
		else
			i += 1
		end
	end
	word
  end
  
end
