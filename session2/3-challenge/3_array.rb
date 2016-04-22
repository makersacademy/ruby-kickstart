# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	array = self.split("")
  	newArray = []
  	array.each_with_index do |x , index|
  		newArray.push(x) if (index % 2 == 0)
  	end

  newArray.join("")
  end
  
end

