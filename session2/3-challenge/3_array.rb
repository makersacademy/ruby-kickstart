# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    string_array = self.split("")
    final_array = []
  	string_array.collect! do |c|
      if string_array.index(c).even?
        final_array << c
      end
    end
    final_array.join("")
  end

#every_other_char("Four score and seven years ago...")

end
