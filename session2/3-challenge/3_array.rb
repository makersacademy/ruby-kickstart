# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
   new_string = ''
   self.length.times do |i|
   if i.even? 
   	new_string << self[i]
   end 
  end
  return new_string
end 
end

puts "abcdefg".every_other_char