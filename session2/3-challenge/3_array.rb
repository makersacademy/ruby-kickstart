# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    char_array = []
    self.split(//).each_with_index do |char, index|
      char_array.push(char) if index.even?
    end
    char_array.join
  end
end
