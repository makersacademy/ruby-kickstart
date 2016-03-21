# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
 new_string = ""
    (self.length).times do |num|
      new_string << self[num] if num.even? && self[num]
    end
   new_string
 end
end
