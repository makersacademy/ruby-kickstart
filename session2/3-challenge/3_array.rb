# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
array = []
odds = []
y=0
 array = self.chars
 array.each do |x|
 	odds << array[y] 
y+=2
end
 

p odds.join
  end

end

"four score and seven years ago....".every_other_char