# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  returned_characters = ""
  i = 0
  while i <= string.size
  	if string[i] == "r" || string[i] == "R"
      i += 1
  	  returned_characters << string[i].to_s
  	else
  	  i +=1
  	end
  end
  returned_characters
end

pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr") 