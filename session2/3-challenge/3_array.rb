# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    result = ""
    chars.each_index do |index|
      result << chars[index].to_s if index.even?
    end
    result
  end
end

p "Four score and seven years ago...".every_other_char

# "Four score and seven years ago..." -> "Fu cr n ee er g.."