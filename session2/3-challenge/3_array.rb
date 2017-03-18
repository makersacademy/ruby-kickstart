# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
<<<<<<< HEAD
    newText = []
    text = self.chars
    for x in 0..text.length
      if x.even?
        newText << text[x]
      end
    end
    newText = newText.join
=======
  	newText = []
  	text = self.chars
  	for x in 0..text.length
			if x.even?
  			newText << text[x]
			end
		end
  	newText = newText.join
>>>>>>> 0718f30a89be639e676a2adeb890b6cb8525ba11
  end
end