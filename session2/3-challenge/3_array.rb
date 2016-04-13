# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    word = ""
    i = 0
    while i < self.length
      word+=self[i]
      i += 2
    end
    return word

  end

end


'abcdefg'.every_other_char