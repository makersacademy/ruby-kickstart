# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = ""
    self.size.times do |char|
      next if char.odd?
      to_return << self[char]
    end
    to_return
  end
end

puts "abcdefg".every_other_char