# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
    final_string = ""
    chars.each_with_index {|w ,i| final_string << w if i.even?}
    final_string
  end
end

puts "abcdefg".every_other_char
puts "".every_other_char
