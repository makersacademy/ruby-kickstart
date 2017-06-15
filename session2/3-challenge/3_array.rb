# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    newstring = ""
    self.size.times do |index|
      if index % 2 == 0
        newstring = newstring + self[index]
      end
    end
    return newstring
  end

end

puts "hello".every_other_char
