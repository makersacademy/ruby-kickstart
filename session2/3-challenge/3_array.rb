# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""
class String
  def every_other_char
    if self.length%2 !=0
      self << " "
    end
    arrays = self.split("").each_slice(2).to_a
    arrays.each {|array| array.pop}
    arrays.join
  end
end
