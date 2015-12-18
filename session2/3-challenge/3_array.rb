# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    letters = self.chars
    letters.select.each_with_index {|_, index| index.even?}.join
  end

end
