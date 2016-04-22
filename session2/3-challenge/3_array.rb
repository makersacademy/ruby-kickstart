# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    if self.length % 2 != 0
      self << " "
    end

    self.scan(/(.)./).join
  end
  
end
