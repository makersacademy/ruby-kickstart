# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    str = ""
    split_string = self.split("")
    count = 1
    split_string.each do |letter|
      if count % 2 == 1
        str += letter
      end
      count += 1
    end

    str
  end
end

puts "sdfsdfsdf".every_other_char
