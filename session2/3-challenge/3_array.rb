# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
 
  def every_other_char
  	input = gets.split(//)
  	input.length.times do |x|
  		print input[x] if x.even?
  	end
  end

puts "Enter some characters"
new_string = String.new
new_string.every_other_char

end
