# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    original_characters = self.split("")
    filtered_characters = []
    i = 0
    original_characters.each do
      filtered_characters << original_characters[i] if i % 2 == 0
      i +=1
    end
    filtered_characters.join("")
  end
end

"abcdefg".every_other_char
