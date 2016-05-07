# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_string = []
    self.each_char.with_index do |char, index|
      new_string.push(char) if index % 2 == 0
    end
    new_string.join
  end
end
