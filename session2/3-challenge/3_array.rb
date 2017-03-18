# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    newstring = ''
    each_char.with_index do |char, index|
      if index.even?
        newstring << char
      end
    end
    newstring
  end
end

puts "abcdefg".every_other_char