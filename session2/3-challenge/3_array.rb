# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    (0..(self.size)).map {|i| self[i] if i.even?}.compact.join
  end
  
end


