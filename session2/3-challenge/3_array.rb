# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	to_return = ""
  	index = 1
  	each_char do |character|
  		if index % 2 == 0 
  			index += 1
  			next
  		else to_return << character
  			index += 1
  		end
  	end
  	to_return
  end
end

puts "abcdefg".every_other_char

