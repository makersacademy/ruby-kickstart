# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    a = ''
    self.each_char.with_index{|x,y| y.even? ? a << x : x}
    a
  end
  
end
