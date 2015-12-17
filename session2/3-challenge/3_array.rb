# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
 # abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  
  	def every_other_char
  		n = ''
	  	each_char.with_index do |x, i| 
	  		n << x if i.even?
	  	end 
	  	return n
	end
end

puts "abcdefg".every_other_char  # => "aceg"
#"".every_other_char         # => ""