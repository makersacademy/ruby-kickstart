# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	scan(/(.).?/).join
  end
end


#p "abcdefg".every_other_char
#p "".every_other_char