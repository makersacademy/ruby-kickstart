# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	array_of_chars = chars.map
  	array2 = []
  	array_of_chars.each_with_index { |x, i| array2 << x if i % 2 == 0 }
  	array2.join
  end
  
end
