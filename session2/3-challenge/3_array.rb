# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    newstring = ""
    each_char.each_with_index do |char, index|
      newstring << char if index.even?
    end
  return newstring
 end
end
