# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	
  	arr = split("")
  	output = []

  	# output = arr.select { |index| index.even? }

	arr.each_slice(2) { |a, b| output << [a] }

	output.flatten.join
  end
  
end

puts "string".every_other_char
