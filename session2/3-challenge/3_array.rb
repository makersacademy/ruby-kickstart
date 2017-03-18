# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    self.scan(/./).map.with_index {|x, i| i%2 == 0 ? x : nil}.compact.join
  end  
end
