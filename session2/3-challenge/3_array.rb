# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""


class String
  def every_other_char
    output = ""
    each_char.each_with_index do |l, i|
      if i.even?
        output << l
      end
      
    end
    return output
  end
end

"abcdefg".every_other_char
"".every_other_char