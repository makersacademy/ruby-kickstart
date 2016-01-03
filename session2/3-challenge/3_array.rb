# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	new_array = ''  # why '' and not [] ?
    each_char.with_index do |char, index|
      new_array << char if index.even?
    end
    new_array
  end
  
end

# puts "abcdefg".every_other_char  = works!

# is it the 'for strings' part of the question that triggers the need to create a class?
# I just wrote the method initially (without putting inside a class)...