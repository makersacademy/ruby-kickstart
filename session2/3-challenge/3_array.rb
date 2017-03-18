# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    return "" if self.empty?
    
    list = []
    
    self.size.times do |x|
      letter = self[x]
      list << letter if x.even?
    end   
    list.join
  end
  
end
