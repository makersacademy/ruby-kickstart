# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = String.new
    range = 0...self.length
    range.step(2) {|x| to_return << self[x] }
    to_return
  end
end
