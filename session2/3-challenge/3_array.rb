# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_string = ""
    each_char.with_index do |char, index|
      new_string << char if index.even?
    end
    new_string 
  end
end