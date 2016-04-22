# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    string_to_return = String.new

    each_char.with_index do |char, i|
      if i.even?
        string_to_return << char
      end
    end

    string_to_return
  end
end
