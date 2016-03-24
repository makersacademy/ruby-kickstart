# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    string_array = self.split("")
    return_string = ""

    string_array.each_index do |ind|
      if ind.even? then return_string << string_array[ind] end
    end
  return_string
  end

end