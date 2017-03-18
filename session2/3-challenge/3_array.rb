# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    end_char = ""
    each_char.with_index do |char, index| 
      end_char << char if index.even?
    end
    end_char
  end
end
