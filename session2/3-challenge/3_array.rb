# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    s = ''
    l = self.length
    (0...l).each do |x|
      break if x == l
      x.even? ? s << self[x] : next
    end
    s
  end

end
