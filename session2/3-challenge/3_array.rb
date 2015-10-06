# Write a method named every_other_char for strings that,
# returns an array containing every other character
# GM - should say 'returns a string'.
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    string_1 = ""
    self.chars.each_slice(2) {|a,b| string_1 << a}
    string_1
  end
end
