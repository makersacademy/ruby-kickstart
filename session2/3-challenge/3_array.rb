# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  
  def every_other_char
    every_other_character = []
    array = self.chars
    return self if array.length <= 1
    array.each_with_index { |letter, index| every_other_character.push(letter) if index % 2 == 0 }
    return every_other_character.join
  end
end
