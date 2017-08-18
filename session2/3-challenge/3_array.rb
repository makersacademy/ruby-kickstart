# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    self.split(//).each_with_index.map {|x,z| x if z.even?}.compact.join
  end
  
end
 
"abcdefg".every_other_char
