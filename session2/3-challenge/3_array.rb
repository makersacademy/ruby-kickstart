# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
	def every_other_char()
  	retmsg = ""
  		if (self == "")
  			return ''
  		else
  			for i in (0..self.length-1)
  				if (i%2 == 0)
  				retmsg = retmsg + self[i]
  				end
  			end
  		return retmsg
  		end
  	end
end


 str = String.new("asdas")
 print str.every_other_char()

# print "abcdefg".every_other_char()
