# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    arr = ''
    self.length.times do |i|
      arr << self[i] if i % 2 == 0
    end
    arr
  end  
end
