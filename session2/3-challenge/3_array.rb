# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	other = []
  	self.chars.each_with_index do |x, i| 
  		if i.even? 
  			other.push(x)
  		end
  	end
  	other.join
  end
end


