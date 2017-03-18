# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
	
  
  def every_other_char 
  	words = ''
  	each_char.with_index do |l, i|
  		words << l if i.even?
  	end
  	words


  end
  
end
