# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    what = ''
    each_char.with_index {|char, index|
      what << char if index.even?}
    return what
  end
end
