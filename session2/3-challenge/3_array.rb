# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	every_other=""
  	arr=self.split("")
  	arr.each_with_index do |c,i| 
  		if i==0 || i%2==0 
  			every_other << c.to_s
  		end
  	end
  	every_other
  end
  
end
