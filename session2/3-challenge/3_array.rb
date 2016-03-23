# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	new_array= []
  	deleted = []
  	self.chars.each_with_index.map {|x, i| i % 2 == 0 ? new_array << x : deleted << x }
return new_array.join
  end
  
end
