# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	result = ""
  	counter = 0
  	while counter < self.length
  		if (counter.even?)
  			result = result + self[counter] 
		end
  		counter += 1
  	end
  	return result
  end
end

