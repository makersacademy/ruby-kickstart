# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    char_array = split("")
    return_array = []
    char_array.each_slice(2) { |a,b| return_array << a }
    return_array.join
  end
end
