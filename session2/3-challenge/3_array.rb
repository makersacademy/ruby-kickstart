# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    array_return = ""
    each_char.with_index do |char, index|
      array_return << char if index.even?
    end
  array_return
  end
end
