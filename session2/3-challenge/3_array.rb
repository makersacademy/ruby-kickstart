# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	out = ""
  	self.split('').each_with_index{|c,i| out << c if i.even? }
  	out
  end
end
