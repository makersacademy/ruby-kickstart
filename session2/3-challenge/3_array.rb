# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    str = ""
    self.chars.each_with_index do |val, index|
      str += val if index.even?
    end
    str
  end
end
