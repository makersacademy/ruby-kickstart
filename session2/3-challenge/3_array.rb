# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new = ""
    each_char.with_index {|i, index| new << i if  index.even?}
    new
  end

end
#if character index = even add to new array
#return new array
