# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    even_char = String.new
    length.times do |l|
    even_char << self[l] if l.even?
  end
    even_char
end
end