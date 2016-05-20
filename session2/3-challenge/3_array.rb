# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
char = self.split('')
odd_char = ""
char.select.with_index {|el, i| i.even? ? odd_char << el : nil }
odd_char.to_s
  end
end


