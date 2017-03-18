# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    ret = ""
    self.split('').each_with_index {|x, y| if y.even?; ret << x; end}
    ret
  end
end
