# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    result = ""
    ary = self.chars
    ary.each_index {|n| result << ary[n] if n.even?}
    result
  end

end
