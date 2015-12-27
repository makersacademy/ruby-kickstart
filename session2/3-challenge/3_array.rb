# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    if self == ""
      return self
  else
    arr = self.split(//)
    arr.select.each_with_index {|_, i| i.even?}.join
    end
  end
end
