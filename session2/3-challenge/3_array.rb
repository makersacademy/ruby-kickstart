# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    
    array = self.split""
    n=0
    
    loop do
      puts array[n]
      n += 2
      break if n > array.length
    end
  
end
