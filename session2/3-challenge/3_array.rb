# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
new_string = ""
each_char.with_index do |n, index|
    new_string << n if index % 2 == 0
  end
  new_string
end
end
