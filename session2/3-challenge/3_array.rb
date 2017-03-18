# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    output = ''
    each_char.with_index do |item, index|
      if index % 2 == 0
        output << item
      end
    end

      return output
      end
end
