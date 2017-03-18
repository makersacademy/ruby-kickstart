# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    array1 = self.split("")
    array2 = array1.select.with_index { |_, i| i.even? }
    return array2.join("")
  end
  
end

"abcdefgh".every_other_char
