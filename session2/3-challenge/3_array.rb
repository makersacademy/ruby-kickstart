# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char

    return_string = ''
    each_char.with_index do |char, index|
      if index.even?
        return_string << char
      end
    end
    return_string
  end

end
