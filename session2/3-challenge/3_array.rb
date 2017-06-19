# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""


class String
  def every_other_char
    to_return = ""
    split("").each_slice(2) { |a,b| to_return << a }
    to_return
  end
end
