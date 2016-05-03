# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    odd = []
    self.each_char.with_index { |c, i| i.even? ? odd.push(c) : ()}
    odd.join
  end
end


