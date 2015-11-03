# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  characters = string.downcase.split("") << " "
  output = ""
  
  until characters.index("r") == nil do
    position = characters.index("r")
    output << characters[position + 1]
    characters[position] = " "   
  end
  
  if output[-1] == " "
    output.chomp!(" ")
  end
  
  output
      
end
