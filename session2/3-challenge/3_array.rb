# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    string = ""
     each_char.each_with_index do |letter, index|
       if index.even?
        string = string + letter
      end
    end
    return string
  end
end



