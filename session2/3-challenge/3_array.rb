# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    each_char.with_index {|x, index| print x if index.even?}
  end
end

"abcdefg".every_other_char
"".every_other_char
