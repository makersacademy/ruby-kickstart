# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  	def every_other_char
  		even_chars = ''
		each_char.with_index do |char, index|
			even_chars << char if index.even?
		end
		even_chars
  	end
end

puts "This is a string".every_other_char