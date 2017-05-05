# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""


  def every_other_char(sentence)
    sentence.chars.each_slice(2).collect {|x| x.first}.join("")
  end



puts every_other_char("")
