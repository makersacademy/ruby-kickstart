# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
     stringArray = ""
     self.split("").each_with_index do |x,i|
     	if i.even?
     		stringArray << x
        end
     end
     stringArray

  end
  
end

puts "abcdefg".every_other_char  # => "aceg"
puts "".every_other_char      
