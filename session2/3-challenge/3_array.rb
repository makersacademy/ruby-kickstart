# Write a method named every_other_char for strings that,
# returns (an array) DO YOU MEAN A STRING? containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    output = ''
    each_char.with_index {|char, index| output << char if index.even?}
    output
  end
end
