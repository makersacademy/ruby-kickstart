# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    output = self.chars.map.with_index{|v,i| i % 2 == 0 ? v : nil}
    output.compact.join.to_s
  end
end
