# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    char_array=[]
    i = 1
    each_char do |x|
      if i.odd?
        char_array << x
      end
    i +=1
  end
char_array.join
  end

end
