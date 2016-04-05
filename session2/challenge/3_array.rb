# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    index = 0
    array1 = []
    array = self.split("")
    array.each_with_index do |cha, index|
      array1 << cha if index == (0) || (index.even?)
      index +1
    end
    array1.join
  end
end
