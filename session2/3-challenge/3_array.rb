# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    char = self.split(//)
    char.values_at(* chars.each_index.select {|i| i.even?}).join.to_s
  end

end
