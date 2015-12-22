# Write a method named every_other_char for strings that,
# returns an STRING containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    i = 0
    new_string = String.new("")
    while i < self.length
      new_string = new_string + self[i]
      i +=2
    end
    new_string
  end
end

"abcdefgh".every_other_char