# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    a = self.scan(/./)
    a.values_at(* a.each_index.select {|i| i.even?}).join
  end
end
