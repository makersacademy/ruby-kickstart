# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char

  array_every_other = []
  self.each_char.with_index { |chr, index | array_every_other.push(chr) if (index % 2 == 0) }
  array_every_other.join("")

  end

end


#hej.every_other_char
# index = 1
# chars.insert index, 'b' , 'c'
# chars # => ["a", "b", "c", "d"]
