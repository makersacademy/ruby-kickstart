# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    i = 0

    str = self
    result = []
      while i < str.length
        result << str[i] if i.even?
        i += 1
      end

    result.join.to_s
  end
end

# p "".every_other_char
# p "abcdefghij".every_other_char
# p "Four score and seven years ago...".every_other_char
