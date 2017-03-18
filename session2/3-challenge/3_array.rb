# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char 
  letters = self.split(//)
  letters.select.each_with_index { |str, i| i.even?}.join
  end
  
end

