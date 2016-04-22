# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
def every_other_char
  input = ""
    each_char.with_index { |c, i| input << c if i.even?}
    input
  end
end
