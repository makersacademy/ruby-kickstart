# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	newText = []
  	text = self.chars
  	for x in 0..text.length
			if x.even?
  			newText << text[x]
			end
		end
  	newText = newText.join
  end
end