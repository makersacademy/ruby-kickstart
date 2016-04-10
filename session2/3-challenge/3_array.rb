# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
array1 = self.split("")
array2 = []
array1.each_index { |x| array2 << array1[x] if x.even?}
array2.join("")

  end
  
end
