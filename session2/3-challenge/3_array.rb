# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
def every_other_char
    my_string = self.chars
  output = my_string.select.each_with_index { |chr, index| index.even? }
return output.join("")
end
end
