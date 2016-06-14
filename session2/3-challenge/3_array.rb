# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char

  	retval = ''
  	return '' if self == ''
  
  	for i in 0..self.length
  		#puts i
  		# puts self[i]
  		retval << self[i].to_s if i.even?
  	end

  	#puts retval
  	return retval
  end

  
end



 # puts "12".every_other_char