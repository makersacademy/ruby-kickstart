# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = ''
    each_char.with_index { |x, y| to_return << x if y.even? }
    to_return
  end
end

=begin
class String
  def every_other_char
  	other_chars = ""
  	chars.with_index {|x, y| if x.odd? return	other_chars << x }
  end
  other_chars  
end
=end

=begin
- prompt for a string
- take that string and set an index identity to every character 
- set those characters into an array
- set the array to produce every other character

=end