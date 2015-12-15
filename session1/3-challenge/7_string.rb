# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  counter = 0
  result = ''
  while counter <= string.length
    if (string[counter] == "r" || string[counter] == "R") && counter < (string.length - 1)
      result += string[counter + 1]
    end
    counter += 1
  end
  result
end
