# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

# "abcdefg"
# 1. make string into array (['a','b'...])
# 2. delete even elements (['a', 'c'...])
# 3. put back into a string ("ac..")
#
# 1. *use chars
# 2. s.delete_if.with_index {|ch,i| i.odd?}
# 3. s.join

class String
  def every_other_char
    self.chars.delete_if.with_index {|a,dick| dick.odd?}.join
  end
end
#   #   @string = string
#   # end
#   # every_other_char = ""
#     string.split(',').each_with_index
#     string.values_at(* a.each_index.select {|i| i.odd?})
#   return string.join
# end
# end
#
# # puts String.every_other_char
#
# class String
#   def every_other_char(string)
