# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	eoc = ''
  	ind = 0
  	while ind < self.size
  		eoc << self[ind]
  		ind += 2 
  	end
  	eoc
  end
  
end
