# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char

  	output = ""
  	array = self.split""
  	p array
  	n = 0

  	loop do
  		if array[n] != nil
  			output << array[n]
  			n += 2
  			break if n > array.length
  		else
  			break
  		end
  	end

  	p output
  end
end